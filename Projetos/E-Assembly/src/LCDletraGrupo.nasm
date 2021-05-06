; Arquivo: LCDletraGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD a letra do grupo de vocês
;  - Valide no hardawre
;  - Bata uma foto!





;     ---------
;         |
;         |
;         |
;         |
;    ------



leaw $17366, %A
movw $-1, (%A)
leaw $17367, %A
movw $-1, (%A)
leaw $17386, %A
movw $-1, (%A)
leaw $17387, %A
movw $-1, (%A)
leaw $17406, %A
movw $-1, (%A)
leaw $17407, %A
movw $-1, (%A)


nop


leaw $15, %A
movw %A, %D


nop


leaw $17426, %A
movw %D, (%A)
leaw $17446, %A
movw %D, (%A)
leaw $17466, %A
movw %D, (%A)
leaw $17486, %A
movw %D, (%A)
leaw $17506, %A
movw %D, (%A)
leaw $17526, %A
movw %D, (%A)
leaw $17546, %A
movw %D, (%A)
leaw $17566, %A
movw %D, (%A)
leaw $17586, %A
movw %D, (%A)
leaw $17606, %A
movw %D, (%A)
leaw $17626, %A
movw %D, (%A)
leaw $17646, %A
movw %D, (%A)
leaw $17666, %A
movw %D, (%A)
leaw $17686, %A
movw %D, (%A)
leaw $17706, %A
movw %D, (%A)
leaw $17726, %A
movw %D, (%A)
leaw $17746, %A
movw %D, (%A)
leaw $17766, %A
movw %D, (%A)
leaw $17786, %A
movw %D, (%A)
leaw $17806, %A
movw %D, (%A)
leaw $17826, %A
movw %D, (%A)
leaw $17846, %A
movw %D, (%A)
leaw $17866, %A
movw %D, (%A)
leaw $17886, %A
movw %D, (%A)
leaw $17906, %A
movw %D, (%A)
leaw $17926, %A
movw %D, (%A)
leaw $17946, %A
movw %D, (%A)
leaw $17966, %A
movw %D, (%A)

nop


leaw $17986, %A
movw $-1, (%A)
leaw $18006, %A
movw $-1, (%A)
leaw $18026, %A
movw $-1, (%A)