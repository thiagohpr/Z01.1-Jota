; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Copia o valor de RAM[1] para RAM[0] deixando o valor sempre positivo.

leaw $1, %A
movw (%A), %D
leaw $else , %A
jl %D
nop
leaw $1, %A
movw (%A), %D
leaw $0, %A
movw %D, (%A)
leaw $END, %A
jmp
nop
else:
leaw $1, %A
movw (%A), %D
notw %D
incw %D
leaw $0, %A
movw %D, (%A)
end:

