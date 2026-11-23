
; Name: salma ahmed mahmoud
; Student ID: 2025000933
; Section: 1
; Question: Q3 - Count Even and Odd Numbers

LDA 2500H
MOV C, A

MVI B, 00H
MVI D, 00H
LXI H, 2501H

LOOP: MOV A, M
ANI 01H
JNZ ODD

INR B
JMP NEXT

ODD: INR D

NEXT: INX H
DCR C
JNZ LOOP

MOV A, B
STA 2600H

MOV A, D
STA 2601H

HLT
