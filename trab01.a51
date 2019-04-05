;
; Alunos: André, Bianca, Marcos, Lucas Lima e Marcos Januario
               org             0000h                  

main:

                mov             P2,a            ;1      |ciclos de máquina do mnemônico call          
                cpl             a               ;1      |ciclos de máquina do mnemônico call       
                mov             P2,a            ;1      |ciclos de máquina do mnemônico call       
                acall           delay900us      ;2      |ciclos de máquina do mnemônico call
                ajmp            main                    

delay900us:                                  
                mov             R1,#2Bh         ;1      |move o valor 30 decimal para o registrador
                                                      
           
aux1:
                mov             R2,#05h         ;1 x 43 |move o valor 5 decimal para o registrador      
                nop                             ;1 x 43
                nop                             ;1 x 43
                nop                             ;1 x 43

aux2: 
                nop                             ;1 x 43 x 5 = 215
                djnz            R2,aux2         ;2 x 43 x 5 = 430               |decrementa o R2 até chegar a zero
                djnz            R1,aux1         ;2 x 43 = 86                    |decrementa o R1 até chegar a zero
                                                ;----------------------------------------
                                                ;Total = 904 us
delay1200us:   
                cpl             a               ;1      |ciclos de máquina do mnemônico call       
                mov             P2,a            ;1      |ciclos de máquina do mnemônico call
                mov             R3,#39h         ;1      |move o valor 30 decimal para o registrador                                                      
           
aux3:
                mov             R4,#05h         ;1 x 57 |move o valor 5 decimal para o registrador      
                nop                             ;1 x 57
                nop                             ;1 x 57
                nop                             ;1 x 57

aux4: 
                nop                             ;1 x 57 x 5 = 215
                djnz            R4,aux4         ;2 x 57 x 5 = 430               |decrementa o R4 até chegar a zero
                djnz            R3,aux3         ;2 x 57 = 86                    |decrementa o R3 até chegar a zero
                ret                             ;2                              |retorna para a função main
                                                ;----------------------------------------
                                                ;Total = 1202 us
       
                end                             ;Fim do programa                                 