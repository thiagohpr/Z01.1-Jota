; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = ON ON ON ON ON !SW3 !SW2 !SW1 0
; Mesma questão da prova

; SW = chave 21185
leaw $21185, %A
movw (%A), %D 
notw %D

; Valor correto --> 0 0 0 0 0 1 1 1 0 = 14
leaw $14, %A 
andw %A, %D, %D     

; LED = 1 1 1 1 1 0 0 0 0 = 496 
leaw $496, %A 
movw %A, (%A)     
orw (%A), %D, %D 

; LED = 21184
leaw $21184, %A
movw %D, (%A)

