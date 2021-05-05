; Arquivo: Pow.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Eleva ao quadrado o valor da RAM[1] e armazena o resultado na RAM[0].
; Só funciona com números positivos

; RAM[1]XRAM[1]

; RAM[2]=RAM[1]
; while RAM[2]>0:
;   RAM[0]=RAM[0]+RAM[1]
;   RAM[2]=RAM[2]-1
leaw $1,%A
movw (%A),%D
incw %A
movw %D, (%A)
WHILE:
leaw $0, %
movw (%A),%D
incw %A
addw %D,(%A),%D
leaw $0, %A
movw %D,(%A)
leaw $2, %A
movw (%A),%D
leaw $1, %A
subw %D,%A,%D
leaw $2,%A
movw %D,(%A)
leaw $WHILE,%A
jg
nop