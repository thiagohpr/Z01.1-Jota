; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo


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


nop
;O

leaw $17369, %A
movw $-1, (%A)
leaw $17370, %A
movw $-1, (%A)
leaw $17389, %A
movw $-1, (%A)
leaw $17390, %A
movw $-1, (%A)
leaw $17409, %A
movw $-1, (%A)
leaw $17410, %A
movw $-1, (%A)


nop


leaw $2047, %A
movw %A, %D
notw %D


nop


leaw $17429, %A
movw %D, (%A)
leaw $17449, %A
movw %D, (%A)
leaw $17469, %A
movw %D, (%A)
leaw $17489, %A
movw %D, (%A)
leaw $17509, %A
movw %D, (%A)
leaw $17529, %A
movw %D, (%A)
leaw $17549, %A
movw %D, (%A)
leaw $17569, %A
movw %D, (%A)
leaw $17589, %A
movw %D, (%A)
leaw $17609, %A
movw %D, (%A)
leaw $17629, %A
movw %D, (%A)
leaw $17649, %A
movw %D, (%A)
leaw $17669, %A
movw %D, (%A)
leaw $17689, %A
movw %D, (%A)
leaw $17709, %A
movw %D, (%A)
leaw $17729, %A
movw %D, (%A)
leaw $17749, %A
movw %D, (%A)
leaw $17769, %A
movw %D, (%A)
leaw $17789, %A
movw %D, (%A)
leaw $17809, %A
movw %D, (%A)
leaw $17829, %A
movw %D, (%A)
leaw $17849, %A
movw %D, (%A)
leaw $17869, %A
movw %D, (%A)
leaw $17889, %A
movw %D, (%A)
leaw $17909, %A
movw %D, (%A)
leaw $17929, %A
movw %D, (%A)
leaw $17949, %A
movw %D, (%A)
leaw $17969, %A
movw %D, (%A)


nop


leaw $17989, %A
movw $-1, (%A)
leaw $18009, %A
movw $-1, (%A)
leaw $18029, %A
movw $-1, (%A)
leaw $17990, %A
movw $-1, (%A)
leaw $18010, %A
movw $-1, (%A)
leaw $18030, %A
movw $-1, (%A)


nop


leaw $15, %A
movw %A, %D


nop


leaw $17430, %A
movw %D, (%A)
leaw $17450, %A
movw %D, (%A)
leaw $17470, %A
movw %D, (%A)
leaw $17490, %A
movw %D, (%A)
leaw $17510, %A
movw %D, (%A)
leaw $17530, %A
movw %D, (%A)
leaw $17550, %A
movw %D, (%A)
leaw $17570, %A
movw %D, (%A)
leaw $17590, %A
movw %D, (%A)
leaw $17610, %A
movw %D, (%A)
leaw $17630, %A
movw %D, (%A)
leaw $17650, %A
movw %D, (%A)
leaw $17670, %A
movw %D, (%A)
leaw $17690, %A
movw %D, (%A)
leaw $17710, %A
movw %D, (%A)
leaw $17730, %A
movw %D, (%A)
leaw $17750, %A
movw %D, (%A)
leaw $17770, %A
movw %D, (%A)
leaw $17790, %A
movw %D, (%A)
leaw $17810, %A
movw %D, (%A)
leaw $17830, %A
movw %D, (%A)
leaw $17850, %A
movw %D, (%A)
leaw $17870, %A
movw %D, (%A)
leaw $17890, %A
movw %D, (%A)
leaw $17910, %A
movw %D, (%A)
leaw $17930, %A
movw %D, (%A)
leaw $17950, %A
movw %D, (%A)
leaw $17970, %A
movw %D, (%A)

;T

leaw $17372, %A
movw $-1, (%A)
leaw $17373, %A
movw $-1, (%A)
leaw $17392, %A
movw $-1, (%A)
leaw $17393, %A
movw $-1, (%A)
leaw $17412, %A
movw $-1, (%A)
leaw $17413, %A
movw $-1, (%A)


nop



leaw $17432, %A
movw %D, (%A)
leaw $17452, %A
movw %D, (%A)
leaw $17472, %A
movw %D, (%A)
leaw $17492, %A
movw %D, (%A)
leaw $17512, %A
movw %D, (%A)
leaw $17532, %A
movw %D, (%A)
leaw $17552, %A
movw %D, (%A)
leaw $17572, %A
movw %D, (%A)
leaw $17592, %A
movw %D, (%A)
leaw $17612, %A
movw %D, (%A)
leaw $17632, %A
movw %D, (%A)
leaw $17652, %A
movw %D, (%A)
leaw $17672, %A
movw %D, (%A)
leaw $17692, %A
movw %D, (%A)
leaw $17712, %A
movw %D, (%A)
leaw $17732, %A
movw %D, (%A)
leaw $17752, %A
movw %D, (%A)
leaw $17772, %A
movw %D, (%A)
leaw $17792, %A
movw %D, (%A)
leaw $17812, %A
movw %D, (%A)
leaw $17832, %A
movw %D, (%A)
leaw $17852, %A
movw %D, (%A)
leaw $17872, %A
movw %D, (%A)
leaw $17892, %A
movw %D, (%A)
leaw $17912, %A
movw %D, (%A)
leaw $17932, %A
movw %D, (%A)
leaw $17952, %A
movw %D, (%A)
leaw $17972, %A
movw %D, (%A)
leaw $17992, %A
movw %D, (%A)
leaw $18012, %A
movw %D, (%A)
leaw $18032, %A
movw %D, (%A)


; A

leaw $17375, %A
movw $-1, (%A)
leaw $17376, %A
movw $-1, (%A)
leaw $17395, %A
movw $-1, (%A)
leaw $17396, %A
movw $-1, (%A)
leaw $17415, %A
movw $-1, (%A)
leaw $17416, %A
movw $-1, (%A)


nop


leaw $2047, %A
movw %A, %D
notw %D


nop


leaw $17435, %A
movw %D, (%A)
leaw $17455, %A
movw %D, (%A)
leaw $17475, %A
movw %D, (%A)
leaw $17495, %A
movw %D, (%A)
leaw $17515, %A
movw %D, (%A)
leaw $17535, %A
movw %D, (%A)
leaw $17555, %A
movw %D, (%A)
leaw $17575, %A
movw %D, (%A)
leaw $17595, %A
movw %D, (%A)
leaw $17615, %A
movw %D, (%A)
leaw $17635, %A
movw %D, (%A)
leaw $17655, %A
movw %D, (%A)
leaw $17675, %A
movw %D, (%A)
leaw $17695, %A
movw %D, (%A)
leaw $17715, %A
movw %D, (%A)
leaw $17735, %A
movw %D, (%A)
leaw $17755, %A
movw %D, (%A)
leaw $17835, %A
movw %D, (%A)
leaw $17855, %A
movw %D, (%A)
leaw $17875, %A
movw %D, (%A)
leaw $17895, %A
movw %D, (%A)
leaw $17915, %A
movw %D, (%A)
leaw $17935, %A
movw %D, (%A)
leaw $17955, %A
movw %D, (%A)
leaw $17975, %A
movw %D, (%A)
leaw $17995, %A
movw %D, (%A)
leaw $18015, %A
movw %D, (%A)
leaw $18035, %A
movw %D, (%A)


nop


leaw $17775, %A
movw $-1, (%A)
leaw $17795, %A
movw $-1, (%A)
leaw $17815, %A
movw $-1, (%A)
leaw $17776, %A
movw $-1, (%A)
leaw $17796, %A
movw $-1, (%A)
leaw $17816, %A
movw $-1, (%A)


nop


leaw $15, %A
movw %A, %D


nop


leaw $17436, %A
movw %D, (%A)
leaw $17456, %A
movw %D, (%A)
leaw $17476, %A
movw %D, (%A)
leaw $17496, %A
movw %D, (%A)
leaw $17516, %A
movw %D, (%A)
leaw $17536, %A
movw %D, (%A)
leaw $17556, %A
movw %D, (%A)
leaw $17576, %A
movw %D, (%A)
leaw $17596, %A
movw %D, (%A)
leaw $17616, %A
movw %D, (%A)
leaw $17636, %A
movw %D, (%A)
leaw $17656, %A
movw %D, (%A)
leaw $17676, %A
movw %D, (%A)
leaw $17696, %A
movw %D, (%A)
leaw $17716, %A
movw %D, (%A)
leaw $17736, %A
movw %D, (%A)
leaw $17756, %A
movw %D, (%A)
leaw $17836, %A
movw %D, (%A)
leaw $17856, %A
movw %D, (%A)
leaw $17876, %A
movw %D, (%A)
leaw $17896, %A
movw %D, (%A)
leaw $17916, %A
movw %D, (%A)
leaw $17936, %A
movw %D, (%A)
leaw $17956, %A
movw %D, (%A)
leaw $17976, %A
movw %D, (%A)
leaw $17996, %A
movw %D, (%A)
leaw $18016, %A
movw %D, (%A)
leaw $18036, %A
movw %D, (%A)