# Lab 9: Pequena CPU

!!! tip "Sugestão de trabalho"
    1. Cada um faz na sua máquina 
    simultaneamente com os demais integrantes do grupo, discutindo no vídeo.
    
    1. Um integrante faz na sua máquina e compartilha a tela com os demais (todos comentam o mesmo código)

!!! info "Tempo"
    Tempo estimando no lab: 45 min

## Começando

Este lab está disponível em um novo repositório, para começarem trabalhar clonem o repositório para sua máquina:

```
cd ~
git clone https://github.com/Insper/Elementos-Lab10
```

## Lab

O objetivo desse lab é o de começarmos entender como a ULA pode ser utilizada por um programa para realizar ações de um programa. Nas CPUs a ULA é controlada por um bloco chamado de Unidade de Controle (`control unit`), que é responsável por interpretar as instruções e comandar a ULA!

Para entender como isso funciona vamos usar a ULA desenvolvida por vocês em uma arquitetura de CPU muito simples, mas que servirá de exemplo (o nosso computador não será assim). Essa arquitetura de CPU possui uma entrada do usuário (que pode ser por exemplo as chaves da placa) conectada a entrada `Y` da ULA e uma saída (que pode ser os LEDs) conectada a saída (out), a entrada X é conectada a um registrador que recebe o valor da saída da ULA. 

Na CPU deste lab iremos trabalhar com o conceito de registrador acumulador, onde o resultado da ULA será sempre salvo em um lugar fixo: `REG_C`.

!!! note
    Registrador é o termo utilizado para uma unidade simples de memória
    capaz de armazenar apenas uma unidade de dados (nesse caso 16 bits).
    
    Nesse caso, a cada operação do sistema (clock) o registrador salvo
    o resultado da ULA.
    
!!! tip
    O `REG_C` guarda um resultado da operação da ULA até a próxima instrução (clock)

O diagrama a seguir ilustra a Arquitetura descrita anteriormente:

![](figs/D-ULA/ula-aplicada.svg){width=600}

## Control Unit

A unidade de controle (UC) é responsável por ler as instruções a serem executadas (que estão em binário) e comandar toda a CPU para executar o que deve ser feito. Nesse exemplo fictício a UC comanda apenas a ULA, mas ela poderia controlar outras coisas também (mux, pipeline, ...).

## Programa

O programa nesse caso é uma palavra de 4 bits de largura que descreve qual operação deve ser realizada na CPU (linguagem de máquina), nessa CPU tempos as seguintes operações definidas:

| Linguagem de maquina | Instrução               | OP CODE |
|----------------------|-------------------------|---------|
| `0000`               | `REG_C` = `REG_C`       | nop     |
| `0001`               | `REG_C` = `0`           | mov 0,C |
| `1000`               | `REG_C` = !`REG_C`      | not C   |
| `1001`               | `REG_C` = `REG_C` + 1   | add 1,C |
| `1010`               | `REG_C` = `REG_C` + `Y` | add Y,C |
| `1011`               | `REG_C` = `REG_C` - 1   | sub 1,C |

!!! tip
    `OP CODE` é o termo usado para descrever uma instrução, 
    programas escritos em assembly fazem uso de opcodes 
    para facilitar a programação.

!!! note
    `nop` = No Operation (não faz nada/ não modifica nada!) 

### Exemplo

Vamos pensar em um programa muito simples que faz o seguinte:

1. Carrega `0` em `REG_C`
1. `REG_C` + `1`

O código disso (em `nasm`, usando os opcodes) seria:

```nasm 
mov 0,C
add 1,C
nop
```

!!! note
    Esse `nop` é implementando pelo comando que com que a enetrada `X` passe pela ULA (sem modifica), assim `REG_C` = `REG_C`, ou seja, não faz nada.

Para executarmos esse programa, devemos trazuir os opcodes para a linguagem de máquina que de fato a CPU pode ler (lembre que no final é tudo uns e zeros), para fazermos isso temos que ter a seguinte instrução na memória:

```
0:   0001     <--- O Programa começa na linha 0
1:   1001     |     e a cada 'clock' executa para próxima linha
2:   0000     v
```

Legal né? Mas para isso funcionar a Unidade de Controle deve ser capaz de ler a instrução (4 bits) e controlar a ULA para executar tal comando. Nesse lab ela já está implementada com as duas instruções anteriores (`mov 0,C`, `add 1,c`).

Para testar o projeto executamos o comando: `./testeLab.py`.

!!! tip
    Execute o comando com `-g` e verifique a forma de onda (e todos os sinais internos da CPU)

!!! tip "testando"
    `./testeLab.py`

### 1. Terminando o Control Unit

Nossa primeira atividade nesse lab será a de termina de implementar a Unidade de Controle, para poder executar todas as instruções anteriores. A versão disponível para vocês só possui as instruções: `mov 0,C`, `add 1,C` e `nop`, vamos implementar as demais?

Para isso será necessário modificar o arquivo `/src/ControlUnit.vhd`, nele é que está implementando a lógica que traduz instruções em comando do hardware. O control unit lê o a instrução que está salva na memória (`op`) e aciona a ULA (`ula`) para realizar tal operação.

A saída do controlUnit (`ula out std_logic_vector`) é um vetor composto pelos sinais de controle da ula: [`zx`, `nx`, `zy`, `ny`, `f`, `no`]. 

``` vhdl
entity controlunit is
	port (
			op:  in std_logic_vector(3 downto 0); -- Operacao
			ula: out std_logic_vector(5 downto 0) -- controle da ula
                                                  -- [nx zx ny zy f n]
	);
end entity;

architecture  rtl of controlunit is

begin

  with op select ula <=
    "101010" when "0001",
    "011111" when "1001",
    "001100" when others;

end architecture;
```

!!! example
    Quando a instrução for `0001` (`mov 0,C`) o controlUnit irá acionar a ula: `zx=1`, `nx=0`, `zy=1`, `ny=1`, `f=1`, `no=0` para que a sua saída seja 0.
    
!!! example "Modifique"
    1. Você deve implementar as instruções que estão faltando no ControlUnit (`not C`, `add Y,C`, `sub 1,C`).
    1. Consulte a tabela de operações da ULA: 
        - https://insper.github.io/Z01.1/Teoria-ULA/

Antes de testar aplique o patch a seguir para inserirmos os novos comandos no teste do lab:

```bash
 git apply teste2.patch
```
   
 !!! tip
    é necessário adicionar as três linhas a seguir no `controlUnit.vhd` e preencher "      " com o controle da ULA.

    ```diff
      with op select ula <=
        "101010" when "0001",
        "011111" when "1001",
    +   "      " when "1000",
    +   "      " when "1010",
    +   "      " when "1011"
        "001100" when others;  
   
### 2. Analisando CPU

Discuta em grupo as limitações dessa nossa CPU, e o que poderia ser feito para melhorar:

1. Essa CPU é capaz de realizar qualquer tipo de cálculo?
1. Quais limitações você percebe nela?
1. Temos condicionais? Como implementar?
1. ....

Responda o formulário com a resposta do grupo após discussão (pode ser uma resposta por grupo ou uma mais de uma, vocês que escolhem):

<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSf9E3FFm7BxbeLG6C-YxsPattmbwfZz_MVnKwrZ_kkc-k1R1A/viewform?embedded=true" width="640" height="769" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
