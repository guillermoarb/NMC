opt subtitle "Microchip Technology Omniscient Code Generator v1.35 (Free mode) build 201507080246"

opt pagewidth 120

	opt lm

	processor	18F26K22
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ANSELA equ 0F38h ;# 
# 95 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ANSELB equ 0F39h ;# 
# 144 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ANSELC equ 0F3Ah ;# 
# 194 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PMD2 equ 0F3Dh ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PMD1 equ 0F3Eh ;# 
# 295 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PMD0 equ 0F3Fh ;# 
# 374 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
VREFCON2 equ 0F40h ;# 
# 379 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DACCON1 equ 0F40h ;# 
# 475 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
VREFCON1 equ 0F41h ;# 
# 480 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DACCON0 equ 0F41h ;# 
# 594 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
VREFCON0 equ 0F42h ;# 
# 599 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FVRCON equ 0F42h ;# 
# 687 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUICON equ 0F43h ;# 
# 692 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUICONH equ 0F43h ;# 
# 836 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCONL equ 0F44h ;# 
# 841 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCON1 equ 0F44h ;# 
# 989 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCONH equ 0F45h ;# 
# 994 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCON0 equ 0F45h ;# 
# 1100 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SRCON1 equ 0F46h ;# 
# 1161 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SRCON0 equ 0F47h ;# 
# 1231 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1282 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1355 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T6CON equ 0F4Ah ;# 
# 1425 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PR6 equ 0F4Bh ;# 
# 1444 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR6 equ 0F4Ch ;# 
# 1463 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T5GCON equ 0F4Dh ;# 
# 1557 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T5CON equ 0F4Eh ;# 
# 1667 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR5 equ 0F4Fh ;# 
# 1673 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR5L equ 0F4Fh ;# 
# 1692 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR5H equ 0F50h ;# 
# 1711 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T4CON equ 0F51h ;# 
# 1781 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PR4 equ 0F52h ;# 
# 1800 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR4 equ 0F53h ;# 
# 1819 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP5CON equ 0F54h ;# 
# 1882 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR5 equ 0F55h ;# 
# 1888 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR5L equ 0F55h ;# 
# 1907 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR5H equ 0F56h ;# 
# 1926 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP4CON equ 0F57h ;# 
# 1989 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR4 equ 0F58h ;# 
# 1995 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR4L equ 0F58h ;# 
# 2014 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR4H equ 0F59h ;# 
# 2033 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2120 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2125 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP3AS equ 0F5Bh ;# 
# 2361 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWM3CON equ 0F5Ch ;# 
# 2430 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP3CON equ 0F5Dh ;# 
# 2511 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR3 equ 0F5Eh ;# 
# 2517 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR3L equ 0F5Eh ;# 
# 2536 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR3H equ 0F5Fh ;# 
# 2555 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SLRCON equ 0F60h ;# 
# 2586 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
WPUB equ 0F61h ;# 
# 2647 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IOCB equ 0F62h ;# 
# 2685 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTR2CON equ 0F63h ;# 
# 2860 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCP2AS equ 0F64h ;# 
# 2865 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP2AS equ 0F64h ;# 
# 3101 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWM2CON equ 0F65h ;# 
# 3170 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR2 equ 0F67h ;# 
# 3257 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR2L equ 0F67h ;# 
# 3276 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR2H equ 0F68h ;# 
# 3295 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2CON3 equ 0F69h ;# 
# 3356 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3417 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3594 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3734 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4126 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4216 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4235 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCON2 equ 0F70h ;# 
# 4240 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUD2CON equ 0F70h ;# 
# 4542 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCSTA2 equ 0F71h ;# 
# 4547 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC2STA equ 0F71h ;# 
# 4833 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXSTA2 equ 0F72h ;# 
# 4838 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX2STA equ 0F72h ;# 
# 5088 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXREG2 equ 0F73h ;# 
# 5093 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX2REG equ 0F73h ;# 
# 5125 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCREG2 equ 0F74h ;# 
# 5130 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC2REG equ 0F74h ;# 
# 5162 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRG2 equ 0F75h ;# 
# 5167 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP2BRG equ 0F75h ;# 
# 5199 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRGH2 equ 0F76h ;# 
# 5204 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP2BRGH equ 0F76h ;# 
# 5236 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM2CON1 equ 0F77h ;# 
# 5241 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM12CON equ 0F77h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM2CON0 equ 0F78h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM2CON equ 0F78h ;# 
# 5636 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM1CON0 equ 0F79h ;# 
# 5641 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM1CON equ 0F79h ;# 
# 6057 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE4 equ 0F7Ah ;# 
# 6088 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR4 equ 0F7Bh ;# 
# 6119 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR4 equ 0F7Ch ;# 
# 6158 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE5 equ 0F7Dh ;# 
# 6189 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR5 equ 0F7Eh ;# 
# 6220 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR5 equ 0F7Fh ;# 
# 6268 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTA equ 0F80h ;# 
# 6560 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTB equ 0F81h ;# 
# 6932 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTC equ 0F82h ;# 
# 7265 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTE equ 0F84h ;# 
# 7534 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LATA equ 0F89h ;# 
# 7666 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LATB equ 0F8Ah ;# 
# 7798 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LATC equ 0F8Bh ;# 
# 7930 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISA equ 0F92h ;# 
# 7935 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DDRA equ 0F92h ;# 
# 8151 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISB equ 0F93h ;# 
# 8156 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DDRB equ 0F93h ;# 
# 8372 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISC equ 0F94h ;# 
# 8377 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DDRC equ 0F94h ;# 
# 8593 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISE equ 0F96h ;# 
# 8613 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8682 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
HLVDCON equ 0F9Ch ;# 
# 8687 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LVDCON equ 0F9Ch ;# 
# 8961 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE1 equ 0F9Dh ;# 
# 9037 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR1 equ 0F9Eh ;# 
# 9113 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR1 equ 0F9Fh ;# 
# 9189 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE2 equ 0FA0h ;# 
# 9274 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR2 equ 0FA1h ;# 
# 9359 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR2 equ 0FA2h ;# 
# 9444 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE3 equ 0FA3h ;# 
# 9567 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR3 equ 0FA4h ;# 
# 9646 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR3 equ 0FA5h ;# 
# 9725 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EECON1 equ 0FA6h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EECON2 equ 0FA7h ;# 
# 9809 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EEDATA equ 0FA8h ;# 
# 9828 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EEADR equ 0FA9h ;# 
# 9897 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EEADRH equ 0FAAh ;# 
# 9930 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCSTA1 equ 0FABh ;# 
# 9935 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCSTA equ 0FABh ;# 
# 9939 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC1STA equ 0FABh ;# 
# 10391 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXSTA1 equ 0FACh ;# 
# 10396 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXSTA equ 0FACh ;# 
# 10400 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX1STA equ 0FACh ;# 
# 10771 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXREG1 equ 0FADh ;# 
# 10776 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXREG equ 0FADh ;# 
# 10780 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX1REG equ 0FADh ;# 
# 10848 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCREG1 equ 0FAEh ;# 
# 10853 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCREG equ 0FAEh ;# 
# 10857 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC1REG equ 0FAEh ;# 
# 10925 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRG1 equ 0FAFh ;# 
# 10930 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRG equ 0FAFh ;# 
# 10934 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP1BRG equ 0FAFh ;# 
# 11002 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRGH1 equ 0FB0h ;# 
# 11007 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRGH equ 0FB0h ;# 
# 11011 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP1BRGH equ 0FB0h ;# 
# 11079 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T3CON equ 0FB1h ;# 
# 11188 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR3 equ 0FB2h ;# 
# 11194 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR3L equ 0FB2h ;# 
# 11213 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR3H equ 0FB3h ;# 
# 11232 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T3GCON equ 0FB4h ;# 
# 11326 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCP1AS equ 0FB6h ;# 
# 11331 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCPAS equ 0FB6h ;# 
# 11707 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWM1CON equ 0FB7h ;# 
# 11712 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWMCON equ 0FB7h ;# 
# 11960 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11965 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCON equ 0FB8h ;# 
# 11969 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCTL equ 0FB8h ;# 
# 11973 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUD1CON equ 0FB8h ;# 
# 12749 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTR1CON equ 0FB9h ;# 
# 12754 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTRCON equ 0FB9h ;# 
# 12922 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T2CON equ 0FBAh ;# 
# 12992 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PR2 equ 0FBBh ;# 
# 13011 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR2 equ 0FBCh ;# 
# 13030 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP1CON equ 0FBDh ;# 
# 13111 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR1 equ 0FBEh ;# 
# 13117 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR1L equ 0FBEh ;# 
# 13136 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR1H equ 0FBFh ;# 
# 13155 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADCON2 equ 0FC0h ;# 
# 13225 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADCON1 equ 0FC1h ;# 
# 13292 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADCON0 equ 0FC2h ;# 
# 13416 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADRES equ 0FC3h ;# 
# 13422 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADRESL equ 0FC3h ;# 
# 13441 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADRESH equ 0FC4h ;# 
# 13460 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13465 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPCON2 equ 0FC5h ;# 
# 13903 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13908 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPCON1 equ 0FC6h ;# 
# 14182 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1STAT equ 0FC7h ;# 
# 14187 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPSTAT equ 0FC7h ;# 
# 14893 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1ADD equ 0FC8h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPADD equ 0FC8h ;# 
# 15230 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1BUF equ 0FC9h ;# 
# 15235 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPBUF equ 0FC9h ;# 
# 15283 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1MSK equ 0FCAh ;# 
# 15288 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPMSK equ 0FCAh ;# 
# 15404 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15409 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPCON3 equ 0FCBh ;# 
# 15525 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T1GCON equ 0FCCh ;# 
# 15619 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T1CON equ 0FCDh ;# 
# 15731 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR1 equ 0FCEh ;# 
# 15737 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR1L equ 0FCEh ;# 
# 15756 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR1H equ 0FCFh ;# 
# 15775 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCON equ 0FD0h ;# 
# 15907 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
WDTCON equ 0FD1h ;# 
# 15934 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
OSCCON2 equ 0FD2h ;# 
# 15990 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
OSCCON equ 0FD3h ;# 
# 16072 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T0CON equ 0FD5h ;# 
# 16141 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR0 equ 0FD6h ;# 
# 16147 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR0L equ 0FD6h ;# 
# 16166 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR0H equ 0FD7h ;# 
# 16185 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
STATUS equ 0FD8h ;# 
# 16263 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR2 equ 0FD9h ;# 
# 16269 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR2L equ 0FD9h ;# 
# 16288 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR2H equ 0FDAh ;# 
# 16294 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PLUSW2 equ 0FDBh ;# 
# 16313 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PREINC2 equ 0FDCh ;# 
# 16332 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16351 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTINC2 equ 0FDEh ;# 
# 16370 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INDF2 equ 0FDFh ;# 
# 16389 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BSR equ 0FE0h ;# 
# 16395 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR1 equ 0FE1h ;# 
# 16401 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR1L equ 0FE1h ;# 
# 16420 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR1H equ 0FE2h ;# 
# 16426 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PLUSW1 equ 0FE3h ;# 
# 16445 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PREINC1 equ 0FE4h ;# 
# 16464 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16483 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTINC1 equ 0FE6h ;# 
# 16502 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INDF1 equ 0FE7h ;# 
# 16521 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
WREG equ 0FE8h ;# 
# 16558 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR0 equ 0FE9h ;# 
# 16564 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR0L equ 0FE9h ;# 
# 16583 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR0H equ 0FEAh ;# 
# 16589 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PLUSW0 equ 0FEBh ;# 
# 16608 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PREINC0 equ 0FECh ;# 
# 16627 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16646 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTINC0 equ 0FEEh ;# 
# 16665 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INDF0 equ 0FEFh ;# 
# 16684 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INTCON3 equ 0FF0h ;# 
# 16775 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INTCON2 equ 0FF1h ;# 
# 16844 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INTCON equ 0FF2h ;# 
# 16975 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PROD equ 0FF3h ;# 
# 16981 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PRODL equ 0FF3h ;# 
# 17000 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PRODH equ 0FF4h ;# 
# 17019 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TABLAT equ 0FF5h ;# 
# 17040 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTR equ 0FF6h ;# 
# 17046 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTRL equ 0FF6h ;# 
# 17065 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTRH equ 0FF7h ;# 
# 17084 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTRU equ 0FF8h ;# 
# 17114 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCLAT equ 0FF9h ;# 
# 17121 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PC equ 0FF9h ;# 
# 17127 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCL equ 0FF9h ;# 
# 17146 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCLATH equ 0FFAh ;# 
# 17165 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCLATU equ 0FFBh ;# 
# 17171 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
STKPTR equ 0FFCh ;# 
# 17276 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOS equ 0FFDh ;# 
# 17282 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOSL equ 0FFDh ;# 
# 17301 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOSH equ 0FFEh ;# 
# 17320 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOSU equ 0FFFh ;# 
# 51 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ANSELA equ 0F38h ;# 
# 95 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ANSELB equ 0F39h ;# 
# 144 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ANSELC equ 0F3Ah ;# 
# 194 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PMD2 equ 0F3Dh ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PMD1 equ 0F3Eh ;# 
# 295 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PMD0 equ 0F3Fh ;# 
# 374 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
VREFCON2 equ 0F40h ;# 
# 379 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DACCON1 equ 0F40h ;# 
# 475 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
VREFCON1 equ 0F41h ;# 
# 480 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DACCON0 equ 0F41h ;# 
# 594 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
VREFCON0 equ 0F42h ;# 
# 599 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FVRCON equ 0F42h ;# 
# 687 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUICON equ 0F43h ;# 
# 692 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUICONH equ 0F43h ;# 
# 836 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCONL equ 0F44h ;# 
# 841 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCON1 equ 0F44h ;# 
# 989 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCONH equ 0F45h ;# 
# 994 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCON0 equ 0F45h ;# 
# 1100 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SRCON1 equ 0F46h ;# 
# 1161 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SRCON0 equ 0F47h ;# 
# 1231 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1282 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1355 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T6CON equ 0F4Ah ;# 
# 1425 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PR6 equ 0F4Bh ;# 
# 1444 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR6 equ 0F4Ch ;# 
# 1463 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T5GCON equ 0F4Dh ;# 
# 1557 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T5CON equ 0F4Eh ;# 
# 1667 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR5 equ 0F4Fh ;# 
# 1673 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR5L equ 0F4Fh ;# 
# 1692 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR5H equ 0F50h ;# 
# 1711 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T4CON equ 0F51h ;# 
# 1781 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PR4 equ 0F52h ;# 
# 1800 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR4 equ 0F53h ;# 
# 1819 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP5CON equ 0F54h ;# 
# 1882 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR5 equ 0F55h ;# 
# 1888 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR5L equ 0F55h ;# 
# 1907 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR5H equ 0F56h ;# 
# 1926 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP4CON equ 0F57h ;# 
# 1989 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR4 equ 0F58h ;# 
# 1995 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR4L equ 0F58h ;# 
# 2014 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR4H equ 0F59h ;# 
# 2033 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2120 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2125 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP3AS equ 0F5Bh ;# 
# 2361 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWM3CON equ 0F5Ch ;# 
# 2430 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP3CON equ 0F5Dh ;# 
# 2511 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR3 equ 0F5Eh ;# 
# 2517 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR3L equ 0F5Eh ;# 
# 2536 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR3H equ 0F5Fh ;# 
# 2555 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SLRCON equ 0F60h ;# 
# 2586 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
WPUB equ 0F61h ;# 
# 2647 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IOCB equ 0F62h ;# 
# 2685 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTR2CON equ 0F63h ;# 
# 2860 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCP2AS equ 0F64h ;# 
# 2865 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP2AS equ 0F64h ;# 
# 3101 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWM2CON equ 0F65h ;# 
# 3170 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR2 equ 0F67h ;# 
# 3257 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR2L equ 0F67h ;# 
# 3276 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR2H equ 0F68h ;# 
# 3295 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2CON3 equ 0F69h ;# 
# 3356 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3417 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3594 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3734 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4126 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4216 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4235 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCON2 equ 0F70h ;# 
# 4240 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUD2CON equ 0F70h ;# 
# 4542 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCSTA2 equ 0F71h ;# 
# 4547 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC2STA equ 0F71h ;# 
# 4833 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXSTA2 equ 0F72h ;# 
# 4838 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX2STA equ 0F72h ;# 
# 5088 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXREG2 equ 0F73h ;# 
# 5093 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX2REG equ 0F73h ;# 
# 5125 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCREG2 equ 0F74h ;# 
# 5130 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC2REG equ 0F74h ;# 
# 5162 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRG2 equ 0F75h ;# 
# 5167 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP2BRG equ 0F75h ;# 
# 5199 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRGH2 equ 0F76h ;# 
# 5204 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP2BRGH equ 0F76h ;# 
# 5236 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM2CON1 equ 0F77h ;# 
# 5241 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM12CON equ 0F77h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM2CON0 equ 0F78h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM2CON equ 0F78h ;# 
# 5636 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM1CON0 equ 0F79h ;# 
# 5641 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM1CON equ 0F79h ;# 
# 6057 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE4 equ 0F7Ah ;# 
# 6088 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR4 equ 0F7Bh ;# 
# 6119 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR4 equ 0F7Ch ;# 
# 6158 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE5 equ 0F7Dh ;# 
# 6189 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR5 equ 0F7Eh ;# 
# 6220 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR5 equ 0F7Fh ;# 
# 6268 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTA equ 0F80h ;# 
# 6560 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTB equ 0F81h ;# 
# 6932 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTC equ 0F82h ;# 
# 7265 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTE equ 0F84h ;# 
# 7534 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LATA equ 0F89h ;# 
# 7666 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LATB equ 0F8Ah ;# 
# 7798 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LATC equ 0F8Bh ;# 
# 7930 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISA equ 0F92h ;# 
# 7935 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DDRA equ 0F92h ;# 
# 8151 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISB equ 0F93h ;# 
# 8156 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DDRB equ 0F93h ;# 
# 8372 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISC equ 0F94h ;# 
# 8377 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DDRC equ 0F94h ;# 
# 8593 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISE equ 0F96h ;# 
# 8613 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8682 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
HLVDCON equ 0F9Ch ;# 
# 8687 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LVDCON equ 0F9Ch ;# 
# 8961 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE1 equ 0F9Dh ;# 
# 9037 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR1 equ 0F9Eh ;# 
# 9113 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR1 equ 0F9Fh ;# 
# 9189 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE2 equ 0FA0h ;# 
# 9274 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR2 equ 0FA1h ;# 
# 9359 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR2 equ 0FA2h ;# 
# 9444 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE3 equ 0FA3h ;# 
# 9567 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR3 equ 0FA4h ;# 
# 9646 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR3 equ 0FA5h ;# 
# 9725 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EECON1 equ 0FA6h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EECON2 equ 0FA7h ;# 
# 9809 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EEDATA equ 0FA8h ;# 
# 9828 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EEADR equ 0FA9h ;# 
# 9897 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EEADRH equ 0FAAh ;# 
# 9930 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCSTA1 equ 0FABh ;# 
# 9935 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCSTA equ 0FABh ;# 
# 9939 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC1STA equ 0FABh ;# 
# 10391 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXSTA1 equ 0FACh ;# 
# 10396 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXSTA equ 0FACh ;# 
# 10400 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX1STA equ 0FACh ;# 
# 10771 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXREG1 equ 0FADh ;# 
# 10776 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXREG equ 0FADh ;# 
# 10780 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX1REG equ 0FADh ;# 
# 10848 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCREG1 equ 0FAEh ;# 
# 10853 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCREG equ 0FAEh ;# 
# 10857 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC1REG equ 0FAEh ;# 
# 10925 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRG1 equ 0FAFh ;# 
# 10930 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRG equ 0FAFh ;# 
# 10934 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP1BRG equ 0FAFh ;# 
# 11002 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRGH1 equ 0FB0h ;# 
# 11007 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRGH equ 0FB0h ;# 
# 11011 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP1BRGH equ 0FB0h ;# 
# 11079 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T3CON equ 0FB1h ;# 
# 11188 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR3 equ 0FB2h ;# 
# 11194 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR3L equ 0FB2h ;# 
# 11213 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR3H equ 0FB3h ;# 
# 11232 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T3GCON equ 0FB4h ;# 
# 11326 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCP1AS equ 0FB6h ;# 
# 11331 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCPAS equ 0FB6h ;# 
# 11707 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWM1CON equ 0FB7h ;# 
# 11712 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWMCON equ 0FB7h ;# 
# 11960 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11965 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCON equ 0FB8h ;# 
# 11969 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCTL equ 0FB8h ;# 
# 11973 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUD1CON equ 0FB8h ;# 
# 12749 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTR1CON equ 0FB9h ;# 
# 12754 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTRCON equ 0FB9h ;# 
# 12922 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T2CON equ 0FBAh ;# 
# 12992 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PR2 equ 0FBBh ;# 
# 13011 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR2 equ 0FBCh ;# 
# 13030 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP1CON equ 0FBDh ;# 
# 13111 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR1 equ 0FBEh ;# 
# 13117 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR1L equ 0FBEh ;# 
# 13136 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR1H equ 0FBFh ;# 
# 13155 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADCON2 equ 0FC0h ;# 
# 13225 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADCON1 equ 0FC1h ;# 
# 13292 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADCON0 equ 0FC2h ;# 
# 13416 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADRES equ 0FC3h ;# 
# 13422 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADRESL equ 0FC3h ;# 
# 13441 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADRESH equ 0FC4h ;# 
# 13460 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13465 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPCON2 equ 0FC5h ;# 
# 13903 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13908 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPCON1 equ 0FC6h ;# 
# 14182 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1STAT equ 0FC7h ;# 
# 14187 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPSTAT equ 0FC7h ;# 
# 14893 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1ADD equ 0FC8h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPADD equ 0FC8h ;# 
# 15230 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1BUF equ 0FC9h ;# 
# 15235 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPBUF equ 0FC9h ;# 
# 15283 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1MSK equ 0FCAh ;# 
# 15288 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPMSK equ 0FCAh ;# 
# 15404 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15409 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPCON3 equ 0FCBh ;# 
# 15525 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T1GCON equ 0FCCh ;# 
# 15619 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T1CON equ 0FCDh ;# 
# 15731 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR1 equ 0FCEh ;# 
# 15737 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR1L equ 0FCEh ;# 
# 15756 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR1H equ 0FCFh ;# 
# 15775 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCON equ 0FD0h ;# 
# 15907 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
WDTCON equ 0FD1h ;# 
# 15934 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
OSCCON2 equ 0FD2h ;# 
# 15990 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
OSCCON equ 0FD3h ;# 
# 16072 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T0CON equ 0FD5h ;# 
# 16141 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR0 equ 0FD6h ;# 
# 16147 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR0L equ 0FD6h ;# 
# 16166 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR0H equ 0FD7h ;# 
# 16185 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
STATUS equ 0FD8h ;# 
# 16263 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR2 equ 0FD9h ;# 
# 16269 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR2L equ 0FD9h ;# 
# 16288 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR2H equ 0FDAh ;# 
# 16294 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PLUSW2 equ 0FDBh ;# 
# 16313 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PREINC2 equ 0FDCh ;# 
# 16332 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16351 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTINC2 equ 0FDEh ;# 
# 16370 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INDF2 equ 0FDFh ;# 
# 16389 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BSR equ 0FE0h ;# 
# 16395 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR1 equ 0FE1h ;# 
# 16401 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR1L equ 0FE1h ;# 
# 16420 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR1H equ 0FE2h ;# 
# 16426 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PLUSW1 equ 0FE3h ;# 
# 16445 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PREINC1 equ 0FE4h ;# 
# 16464 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16483 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTINC1 equ 0FE6h ;# 
# 16502 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INDF1 equ 0FE7h ;# 
# 16521 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
WREG equ 0FE8h ;# 
# 16558 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR0 equ 0FE9h ;# 
# 16564 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR0L equ 0FE9h ;# 
# 16583 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR0H equ 0FEAh ;# 
# 16589 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PLUSW0 equ 0FEBh ;# 
# 16608 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PREINC0 equ 0FECh ;# 
# 16627 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16646 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTINC0 equ 0FEEh ;# 
# 16665 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INDF0 equ 0FEFh ;# 
# 16684 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INTCON3 equ 0FF0h ;# 
# 16775 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INTCON2 equ 0FF1h ;# 
# 16844 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INTCON equ 0FF2h ;# 
# 16975 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PROD equ 0FF3h ;# 
# 16981 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PRODL equ 0FF3h ;# 
# 17000 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PRODH equ 0FF4h ;# 
# 17019 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TABLAT equ 0FF5h ;# 
# 17040 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTR equ 0FF6h ;# 
# 17046 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTRL equ 0FF6h ;# 
# 17065 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTRH equ 0FF7h ;# 
# 17084 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTRU equ 0FF8h ;# 
# 17114 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCLAT equ 0FF9h ;# 
# 17121 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PC equ 0FF9h ;# 
# 17127 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCL equ 0FF9h ;# 
# 17146 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCLATH equ 0FFAh ;# 
# 17165 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCLATU equ 0FFBh ;# 
# 17171 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
STKPTR equ 0FFCh ;# 
# 17276 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOS equ 0FFDh ;# 
# 17282 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOSL equ 0FFDh ;# 
# 17301 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOSH equ 0FFEh ;# 
# 17320 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOSU equ 0FFFh ;# 
# 51 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ANSELA equ 0F38h ;# 
# 95 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ANSELB equ 0F39h ;# 
# 144 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ANSELC equ 0F3Ah ;# 
# 194 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PMD2 equ 0F3Dh ;# 
# 231 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PMD1 equ 0F3Eh ;# 
# 295 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PMD0 equ 0F3Fh ;# 
# 374 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
VREFCON2 equ 0F40h ;# 
# 379 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DACCON1 equ 0F40h ;# 
# 475 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
VREFCON1 equ 0F41h ;# 
# 480 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DACCON0 equ 0F41h ;# 
# 594 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
VREFCON0 equ 0F42h ;# 
# 599 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FVRCON equ 0F42h ;# 
# 687 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUICON equ 0F43h ;# 
# 692 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUICONH equ 0F43h ;# 
# 836 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCONL equ 0F44h ;# 
# 841 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCON1 equ 0F44h ;# 
# 989 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCONH equ 0F45h ;# 
# 994 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CTMUCON0 equ 0F45h ;# 
# 1100 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SRCON1 equ 0F46h ;# 
# 1161 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SRCON0 equ 0F47h ;# 
# 1231 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1282 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1355 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T6CON equ 0F4Ah ;# 
# 1425 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PR6 equ 0F4Bh ;# 
# 1444 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR6 equ 0F4Ch ;# 
# 1463 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T5GCON equ 0F4Dh ;# 
# 1557 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T5CON equ 0F4Eh ;# 
# 1667 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR5 equ 0F4Fh ;# 
# 1673 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR5L equ 0F4Fh ;# 
# 1692 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR5H equ 0F50h ;# 
# 1711 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T4CON equ 0F51h ;# 
# 1781 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PR4 equ 0F52h ;# 
# 1800 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR4 equ 0F53h ;# 
# 1819 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP5CON equ 0F54h ;# 
# 1882 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR5 equ 0F55h ;# 
# 1888 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR5L equ 0F55h ;# 
# 1907 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR5H equ 0F56h ;# 
# 1926 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP4CON equ 0F57h ;# 
# 1989 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR4 equ 0F58h ;# 
# 1995 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR4L equ 0F58h ;# 
# 2014 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR4H equ 0F59h ;# 
# 2033 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2120 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2125 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP3AS equ 0F5Bh ;# 
# 2361 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWM3CON equ 0F5Ch ;# 
# 2430 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP3CON equ 0F5Dh ;# 
# 2511 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR3 equ 0F5Eh ;# 
# 2517 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR3L equ 0F5Eh ;# 
# 2536 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR3H equ 0F5Fh ;# 
# 2555 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SLRCON equ 0F60h ;# 
# 2586 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
WPUB equ 0F61h ;# 
# 2647 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IOCB equ 0F62h ;# 
# 2685 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTR2CON equ 0F63h ;# 
# 2860 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCP2AS equ 0F64h ;# 
# 2865 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP2AS equ 0F64h ;# 
# 3101 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWM2CON equ 0F65h ;# 
# 3170 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR2 equ 0F67h ;# 
# 3257 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR2L equ 0F67h ;# 
# 3276 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR2H equ 0F68h ;# 
# 3295 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2CON3 equ 0F69h ;# 
# 3356 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3417 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3594 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3734 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4126 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4216 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4235 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCON2 equ 0F70h ;# 
# 4240 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUD2CON equ 0F70h ;# 
# 4542 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCSTA2 equ 0F71h ;# 
# 4547 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC2STA equ 0F71h ;# 
# 4833 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXSTA2 equ 0F72h ;# 
# 4838 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX2STA equ 0F72h ;# 
# 5088 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXREG2 equ 0F73h ;# 
# 5093 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX2REG equ 0F73h ;# 
# 5125 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCREG2 equ 0F74h ;# 
# 5130 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC2REG equ 0F74h ;# 
# 5162 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRG2 equ 0F75h ;# 
# 5167 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP2BRG equ 0F75h ;# 
# 5199 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRGH2 equ 0F76h ;# 
# 5204 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP2BRGH equ 0F76h ;# 
# 5236 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM2CON1 equ 0F77h ;# 
# 5241 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM12CON equ 0F77h ;# 
# 5357 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM2CON0 equ 0F78h ;# 
# 5362 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM2CON equ 0F78h ;# 
# 5636 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM1CON0 equ 0F79h ;# 
# 5641 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CM1CON equ 0F79h ;# 
# 6057 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE4 equ 0F7Ah ;# 
# 6088 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR4 equ 0F7Bh ;# 
# 6119 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR4 equ 0F7Ch ;# 
# 6158 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE5 equ 0F7Dh ;# 
# 6189 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR5 equ 0F7Eh ;# 
# 6220 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR5 equ 0F7Fh ;# 
# 6268 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTA equ 0F80h ;# 
# 6560 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTB equ 0F81h ;# 
# 6932 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTC equ 0F82h ;# 
# 7265 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PORTE equ 0F84h ;# 
# 7534 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LATA equ 0F89h ;# 
# 7666 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LATB equ 0F8Ah ;# 
# 7798 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LATC equ 0F8Bh ;# 
# 7930 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISA equ 0F92h ;# 
# 7935 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DDRA equ 0F92h ;# 
# 8151 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISB equ 0F93h ;# 
# 8156 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DDRB equ 0F93h ;# 
# 8372 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISC equ 0F94h ;# 
# 8377 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
DDRC equ 0F94h ;# 
# 8593 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TRISE equ 0F96h ;# 
# 8613 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8682 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
HLVDCON equ 0F9Ch ;# 
# 8687 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
LVDCON equ 0F9Ch ;# 
# 8961 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE1 equ 0F9Dh ;# 
# 9037 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR1 equ 0F9Eh ;# 
# 9113 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR1 equ 0F9Fh ;# 
# 9189 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE2 equ 0FA0h ;# 
# 9274 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR2 equ 0FA1h ;# 
# 9359 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR2 equ 0FA2h ;# 
# 9444 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIE3 equ 0FA3h ;# 
# 9567 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PIR3 equ 0FA4h ;# 
# 9646 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
IPR3 equ 0FA5h ;# 
# 9725 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EECON1 equ 0FA6h ;# 
# 9790 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EECON2 equ 0FA7h ;# 
# 9809 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EEDATA equ 0FA8h ;# 
# 9828 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EEADR equ 0FA9h ;# 
# 9897 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
EEADRH equ 0FAAh ;# 
# 9930 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCSTA1 equ 0FABh ;# 
# 9935 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCSTA equ 0FABh ;# 
# 9939 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC1STA equ 0FABh ;# 
# 10391 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXSTA1 equ 0FACh ;# 
# 10396 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXSTA equ 0FACh ;# 
# 10400 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX1STA equ 0FACh ;# 
# 10771 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXREG1 equ 0FADh ;# 
# 10776 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TXREG equ 0FADh ;# 
# 10780 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TX1REG equ 0FADh ;# 
# 10848 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCREG1 equ 0FAEh ;# 
# 10853 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCREG equ 0FAEh ;# 
# 10857 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RC1REG equ 0FAEh ;# 
# 10925 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRG1 equ 0FAFh ;# 
# 10930 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRG equ 0FAFh ;# 
# 10934 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP1BRG equ 0FAFh ;# 
# 11002 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRGH1 equ 0FB0h ;# 
# 11007 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SPBRGH equ 0FB0h ;# 
# 11011 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SP1BRGH equ 0FB0h ;# 
# 11079 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T3CON equ 0FB1h ;# 
# 11188 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR3 equ 0FB2h ;# 
# 11194 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR3L equ 0FB2h ;# 
# 11213 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR3H equ 0FB3h ;# 
# 11232 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T3GCON equ 0FB4h ;# 
# 11326 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCP1AS equ 0FB6h ;# 
# 11331 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ECCPAS equ 0FB6h ;# 
# 11707 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWM1CON equ 0FB7h ;# 
# 11712 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PWMCON equ 0FB7h ;# 
# 11960 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11965 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCON equ 0FB8h ;# 
# 11969 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUDCTL equ 0FB8h ;# 
# 11973 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BAUD1CON equ 0FB8h ;# 
# 12749 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTR1CON equ 0FB9h ;# 
# 12754 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PSTRCON equ 0FB9h ;# 
# 12922 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T2CON equ 0FBAh ;# 
# 12992 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PR2 equ 0FBBh ;# 
# 13011 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR2 equ 0FBCh ;# 
# 13030 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCP1CON equ 0FBDh ;# 
# 13111 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR1 equ 0FBEh ;# 
# 13117 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR1L equ 0FBEh ;# 
# 13136 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
CCPR1H equ 0FBFh ;# 
# 13155 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADCON2 equ 0FC0h ;# 
# 13225 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADCON1 equ 0FC1h ;# 
# 13292 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADCON0 equ 0FC2h ;# 
# 13416 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADRES equ 0FC3h ;# 
# 13422 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADRESL equ 0FC3h ;# 
# 13441 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
ADRESH equ 0FC4h ;# 
# 13460 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13465 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPCON2 equ 0FC5h ;# 
# 13903 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13908 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPCON1 equ 0FC6h ;# 
# 14182 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1STAT equ 0FC7h ;# 
# 14187 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPSTAT equ 0FC7h ;# 
# 14893 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1ADD equ 0FC8h ;# 
# 14898 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPADD equ 0FC8h ;# 
# 15230 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1BUF equ 0FC9h ;# 
# 15235 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPBUF equ 0FC9h ;# 
# 15283 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1MSK equ 0FCAh ;# 
# 15288 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPMSK equ 0FCAh ;# 
# 15404 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15409 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
SSPCON3 equ 0FCBh ;# 
# 15525 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T1GCON equ 0FCCh ;# 
# 15619 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T1CON equ 0FCDh ;# 
# 15731 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR1 equ 0FCEh ;# 
# 15737 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR1L equ 0FCEh ;# 
# 15756 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR1H equ 0FCFh ;# 
# 15775 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
RCON equ 0FD0h ;# 
# 15907 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
WDTCON equ 0FD1h ;# 
# 15934 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
OSCCON2 equ 0FD2h ;# 
# 15990 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
OSCCON equ 0FD3h ;# 
# 16072 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
T0CON equ 0FD5h ;# 
# 16141 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR0 equ 0FD6h ;# 
# 16147 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR0L equ 0FD6h ;# 
# 16166 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TMR0H equ 0FD7h ;# 
# 16185 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
STATUS equ 0FD8h ;# 
# 16263 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR2 equ 0FD9h ;# 
# 16269 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR2L equ 0FD9h ;# 
# 16288 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR2H equ 0FDAh ;# 
# 16294 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PLUSW2 equ 0FDBh ;# 
# 16313 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PREINC2 equ 0FDCh ;# 
# 16332 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16351 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTINC2 equ 0FDEh ;# 
# 16370 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INDF2 equ 0FDFh ;# 
# 16389 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
BSR equ 0FE0h ;# 
# 16395 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR1 equ 0FE1h ;# 
# 16401 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR1L equ 0FE1h ;# 
# 16420 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR1H equ 0FE2h ;# 
# 16426 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PLUSW1 equ 0FE3h ;# 
# 16445 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PREINC1 equ 0FE4h ;# 
# 16464 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16483 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTINC1 equ 0FE6h ;# 
# 16502 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INDF1 equ 0FE7h ;# 
# 16521 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
WREG equ 0FE8h ;# 
# 16558 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR0 equ 0FE9h ;# 
# 16564 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR0L equ 0FE9h ;# 
# 16583 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
FSR0H equ 0FEAh ;# 
# 16589 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PLUSW0 equ 0FEBh ;# 
# 16608 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PREINC0 equ 0FECh ;# 
# 16627 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16646 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
POSTINC0 equ 0FEEh ;# 
# 16665 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INDF0 equ 0FEFh ;# 
# 16684 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INTCON3 equ 0FF0h ;# 
# 16775 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INTCON2 equ 0FF1h ;# 
# 16844 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
INTCON equ 0FF2h ;# 
# 16975 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PROD equ 0FF3h ;# 
# 16981 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PRODL equ 0FF3h ;# 
# 17000 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PRODH equ 0FF4h ;# 
# 17019 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TABLAT equ 0FF5h ;# 
# 17040 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTR equ 0FF6h ;# 
# 17046 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTRL equ 0FF6h ;# 
# 17065 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTRH equ 0FF7h ;# 
# 17084 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TBLPTRU equ 0FF8h ;# 
# 17114 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCLAT equ 0FF9h ;# 
# 17121 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PC equ 0FF9h ;# 
# 17127 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCL equ 0FF9h ;# 
# 17146 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCLATH equ 0FFAh ;# 
# 17165 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
PCLATU equ 0FFBh ;# 
# 17171 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
STKPTR equ 0FFCh ;# 
# 17276 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOS equ 0FFDh ;# 
# 17282 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOSL equ 0FFDh ;# 
# 17301 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOSH equ 0FFEh ;# 
# 17320 "/Applications/microchip/xc8/v1.35/include/pic18f26k22.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_SetupInit
	FNCALL	_main,_Write2USART
	FNCALL	_SetupInit,_SetupClock
	FNCALL	_SetupInit,_SetupPorts
	FNCALL	_SetupInit,_Setup_USART2
	FNCALL	_Setup_USART2,_Open2USART
	FNROOT	_main
	FNCALL	_ISR,_uart2Isr
	FNCALL	_uart2Isr,_Read2USART
	FNCALL	intlevel2,_ISR
	global	intlevel2
	FNROOT	intlevel2
	global	_NoPaqXBAPI
	global	_FlagPaqRx2
	global	_PaqXBAPILen
	global	_USART2_Status
	global	_iRx2XBAPI
	global	_BufferRxUART
	global	_ANSELA
_ANSELA	set	0xF38
	global	_ANSELB
_ANSELB	set	0xF39
	global	_ANSELBbits
_ANSELBbits	set	0xF39
	global	_ANSELC
_ANSELC	set	0xF3A
	global	_INTCON2bits
_INTCON2bits	set	0xFF1
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_IPR1bits
_IPR1bits	set	0xF9F
	global	_IPR3bits
_IPR3bits	set	0xFA5
	global	_OSCCONbits
_OSCCONbits	set	0xFD3
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIE3
_PIE3	set	0xFA3
	global	_PIE3bits
_PIE3bits	set	0xFA3
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_PIR3bits
_PIR3bits	set	0xFA4
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_RC2STAbits
_RC2STAbits	set	0xF71
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_RCREG2
_RCREG2	set	0xF74
	global	_RCSTA2
_RCSTA2	set	0xF71
	global	_RCSTA2bits
_RCSTA2bits	set	0xF71
	global	_SPBRG2
_SPBRG2	set	0xF75
	global	_SPBRGH2
_SPBRGH2	set	0xF76
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TXREG2
_TXREG2	set	0xF73
	global	_TXSTA2
_TXSTA2	set	0xF72
	global	_TXSTA2bits
_TXSTA2bits	set	0xF72
	global	_PEIE
_PEIE	set	0x7F96
	global	_TX2IF
_TX2IF	set	0x7D24
; #config settings
global __CFG_PLLCFG$ON
__CFG_PLLCFG$ON equ 0x0
global __CFG_PRICLKEN$ON
__CFG_PRICLKEN$ON equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$HSMP
__CFG_FOSC$HSMP equ 0x0
global __CFG_BOREN$SBORDIS
__CFG_BOREN$SBORDIS equ 0x0
global __CFG_BORV$190
__CFG_BORV$190 equ 0x0
global __CFG_PWRTEN$OFF
__CFG_PWRTEN$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_WDTEN$OFF
__CFG_WDTEN$OFF equ 0x0
global __CFG_CCP2MX$PORTC1
__CFG_CCP2MX$PORTC1 equ 0x0
global __CFG_CCP3MX$PORTB5
__CFG_CCP3MX$PORTB5 equ 0x0
global __CFG_T3CMX$PORTC0
__CFG_T3CMX$PORTC0 equ 0x0
global __CFG_HFOFST$ON
__CFG_HFOFST$ON equ 0x0
global __CFG_PBADEN$ON
__CFG_PBADEN$ON equ 0x0
global __CFG_MCLRE$EXTMCLR
__CFG_MCLRE$EXTMCLR equ 0x0
global __CFG_P2BMX$PORTB5
__CFG_P2BMX$PORTB5 equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_LVP$ON
__CFG_LVP$ON equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTR2$OFF
__CFG_EBTR2$OFF equ 0x0
global __CFG_EBTR3$OFF
__CFG_EBTR3$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"Files/main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_NoPaqXBAPI
_NoPaqXBAPI:
       ds      2
	global	_FlagPaqRx2
_FlagPaqRx2:
       ds      1
	global	_PaqXBAPILen
_PaqXBAPILen:
       ds      1
	global	_USART2_Status
_USART2_Status:
       ds      1
	global	_iRx2XBAPI
_iRx2XBAPI:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_BufferRxUART
_BufferRxUART:
       ds      80
	file	"Files/main.as"
	line	#
psect	cinit
; Clear objects allocated to BANK0 (80 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	80
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (6 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+5)&0xffh,c
clrf	(__pbssCOMRAM+4)&0xffh,c
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_SetupInit:	; 0 bytes @ 0x0
?_Write2USART:	; 0 bytes @ 0x0
?_SetupClock:	; 0 bytes @ 0x0
?_SetupPorts:	; 0 bytes @ 0x0
?_Setup_USART2:	; 0 bytes @ 0x0
??_Read2USART:	; 0 bytes @ 0x0
?_uart2Isr:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_Read2USART:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	Read2USART@data
Read2USART@data:	; 1 bytes @ 0x0
	ds   1
??_uart2Isr:	; 0 bytes @ 0x1
	ds   5
??_ISR:	; 0 bytes @ 0x6
	ds   14
??_Write2USART:	; 0 bytes @ 0x14
??_SetupClock:	; 0 bytes @ 0x14
??_SetupPorts:	; 0 bytes @ 0x14
?_Open2USART:	; 0 bytes @ 0x14
	global	Write2USART@data
Write2USART@data:	; 1 bytes @ 0x14
	global	Open2USART@spbrg
Open2USART@spbrg:	; 2 bytes @ 0x14
	ds   2
??_Open2USART:	; 0 bytes @ 0x16
	global	Open2USART@config
Open2USART@config:	; 1 bytes @ 0x16
	ds   1
??_Setup_USART2:	; 0 bytes @ 0x17
	global	Setup_USART2@BaudRate
Setup_USART2@BaudRate:	; 2 bytes @ 0x17
	ds   2
	global	Setup_USART2@USART2Config
Setup_USART2@USART2Config:	; 1 bytes @ 0x19
	ds   1
??_SetupInit:	; 0 bytes @ 0x1A
??_main:	; 0 bytes @ 0x1A
	ds   1
	global	main@i
main@i:	; 1 bytes @ 0x1B
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         86
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     28      34
;!    BANK0           160      0      80
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          256      0       0
;!    BANK15           56      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _SetupInit->_Setup_USART2
;!    _Setup_USART2->_Open2USART
;!
;!Critical Paths under _ISR in COMRAM
;!
;!    _ISR->_uart2Isr
;!    _uart2Isr->_Read2USART
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK15
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0     372
;!                                             26 COMRAM     2     2      0
;!                          _SetupInit
;!                        _Write2USART
;! ---------------------------------------------------------------------------------
;! (1) _Write2USART                                          1     1      0      15
;!                                             20 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _SetupInit                                            0     0      0     311
;!                         _SetupClock
;!                         _SetupPorts
;!                       _Setup_USART2
;! ---------------------------------------------------------------------------------
;! (2) _Setup_USART2                                         3     3      0     311
;!                                             23 COMRAM     3     3      0
;!                         _Open2USART
;! ---------------------------------------------------------------------------------
;! (3) _Open2USART                                           3     1      2     263
;!                                             20 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! (2) _SetupPorts                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _SetupClock                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                 14    14      0      23
;!                                              6 COMRAM    14    14      0
;!                           _uart2Isr
;! ---------------------------------------------------------------------------------
;! (5) _uart2Isr                                             5     5      0      23
;!                                              1 COMRAM     5     5      0
;!                         _Read2USART
;! ---------------------------------------------------------------------------------
;! (6) _Read2USART                                           1     1      0      23
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _SetupInit
;!     _SetupClock
;!     _SetupPorts
;!     _Setup_USART2
;!       _Open2USART
;!   _Write2USART
;!
;! _ISR (ROOT)
;!   _uart2Isr
;!     _Read2USART
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             F37      0       0      37        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK14          100      0       0      33        0.0%
;!BANK14             100      0       0      34        0.0%
;!BITBANK13          100      0       0      31        0.0%
;!BANK13             100      0       0      32        0.0%
;!BITBANK12          100      0       0      29        0.0%
;!BANK12             100      0       0      30        0.0%
;!BITBANK11          100      0       0      27        0.0%
;!BANK11             100      0       0      28        0.0%
;!BITBANK10          100      0       0      25        0.0%
;!BANK10             100      0       0      26        0.0%
;!BITBANK9           100      0       0      23        0.0%
;!BANK9              100      0       0      24        0.0%
;!BITBANK8           100      0       0      21        0.0%
;!BANK8              100      0       0      22        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK4           100      0       0      13        0.0%
;!BANK4              100      0       0      14        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0      50       5       50.0%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     1C      22       1       36.2%
;!BITBANK15           38      0       0      35        0.0%
;!BANK15              38      0       0      36        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      72      12        0.0%
;!DATA                 0      0      72       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   27[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   42[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_SetupInit
;;		_Write2USART
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"main.c"
	line	30
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 25
	line	32
	
l1059:
;main.c: 32: SetupInit();
	call	_SetupInit	;wreg free
	goto	l1061
	line	34
;main.c: 34: while(1){
	
l43:
	line	35
	
l1061:
;main.c: 35: for(unsigned char i=0;i<=50;i++){
	movlw	low(0)
	movwf	((c:main@i)),c
	
l1063:
		movlw	033h-1
	cpfsgt	((c:main@i)),c
	goto	u421
	goto	u420

u421:
	goto	l1067
u420:
	goto	l1071
	
l1065:
	goto	l1071
	
l44:
	line	36
	
l1067:
;main.c: 36: _delay((unsigned long)((10)*(32000000/4000.0)));
	movlw	104
movwf	(??_main+0+0)&0ffh,c,f
	movlw	228
u527:
decfsz	wreg,f
	goto	u527
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u527
	nop2

	line	35
	
l1069:
	incf	((c:main@i)),c
		movlw	033h-1
	cpfsgt	((c:main@i)),c
	goto	u431
	goto	u430

u431:
	goto	l1067
u430:
	goto	l1071
	
l45:
	line	39
	
l1071:
;main.c: 37: }
;main.c: 39: PORTBbits.RB3=!PORTBbits.RB3;
	btfss	((c:3969)),c,3	;volatile
	goto	u441
	goto	u440
u441:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u458
u440:
	clrf	(??_main+0+0)&0ffh,c
u458:
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	movf	((c:3969)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3969)),c	;volatile
	line	41
;main.c: 41: while(!TXSTA2bits.TRMT);
	goto	l46
	
l47:
	
l46:
	btfss	((c:3954)),c,1	;volatile
	goto	u461
	goto	u460
u461:
	goto	l46
u460:
	goto	l1073
	
l48:
	line	42
	
l1073:
;main.c: 42: Write2USART(0x0A);
	movlw	(0Ah)&0ffh
	
	call	_Write2USART
	line	44
	
l1075:
;main.c: 44: if(FlagPaqRx2){
	movf	((c:_FlagPaqRx2)),c,w
	btfsc	status,2
	goto	u471
	goto	u470
u471:
	goto	l1061
u470:
	goto	l50
	line	45
	
l1077:
;main.c: 45: while(!TXSTA2bits.TRMT);
	goto	l50
	
l51:
	
l50:
	btfss	((c:3954)),c,1	;volatile
	goto	u481
	goto	u480
u481:
	goto	l50
u480:
	goto	l1079
	
l52:
	line	46
	
l1079:
;main.c: 46: Write2USART(PaqXBAPILen);
	movf	((c:_PaqXBAPILen)),c,w
	
	call	_Write2USART
	goto	l1061
	line	47
	
l49:
	goto	l1061
	line	50
	
l53:
	line	34
	goto	l1061
	
l54:
	line	51
	
l55:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_Write2USART

;; *************** function _Write2USART *****************
;; Defined at:
;;		line 15 in file "/Applications/microchip/xc8/v1.35/sources/pic18/plib/USART/u2write.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"/Applications/microchip/xc8/v1.35/sources/pic18/plib/USART/u2write.c"
	line	15
global __ptext1
__ptext1:
psect	text1
	file	"/Applications/microchip/xc8/v1.35/sources/pic18/plib/USART/u2write.c"
	line	15
	global	__size_of_Write2USART
	__size_of_Write2USART	equ	__end_of_Write2USART-_Write2USART
	
_Write2USART:
;incstack = 0
	opt	stack 27
;Write2USART@data stored from wreg
	movwf	((c:Write2USART@data)),c
	line	17
	
l889:
	btfss	((c:3954)),c,6	;volatile
	goto	u131
	goto	u130
u131:
	goto	l895
u130:
	line	19
	
l891:
	bcf	((c:3954)),c,0	;volatile
	line	20
	btfss	((c:_USART2_Status)),c,1
	goto	u141
	goto	u140
u141:
	goto	l895
u140:
	line	21
	
l893:
	bsf	((c:3954)),c,0	;volatile
	goto	l895
	
l188:
	goto	l895
	line	22
	
l187:
	line	24
	
l895:
	movff	(c:Write2USART@data),(c:3955)	;volatile
	line	25
	
l189:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Write2USART
	__end_of_Write2USART:
	signat	_Write2USART,4216
	global	_SetupInit

;; *************** function _SetupInit *****************
;; Defined at:
;;		line 55 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SetupClock
;;		_SetupPorts
;;		_Setup_USART2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"main.c"
	line	55
global __ptext2
__ptext2:
psect	text2
	file	"main.c"
	line	55
	global	__size_of_SetupInit
	__size_of_SetupInit	equ	__end_of_SetupInit-_SetupInit
	
_SetupInit:
;incstack = 0
	opt	stack 25
	line	57
	
l1031:
;main.c: 57: SetupClock();
	call	_SetupClock	;wreg free
	line	58
	
l1033:
;main.c: 58: SetupPorts();
	call	_SetupPorts	;wreg free
	line	59
	
l1035:
;main.c: 59: Setup_USART2();
	call	_Setup_USART2	;wreg free
	line	61
	
l1037:
;main.c: 61: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	62
	
l1039:
;main.c: 62: INTCONbits.GIE = 1;
	bsf	((c:4082)),c,7	;volatile
	line	63
	
l58:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_SetupInit
	__end_of_SetupInit:
	signat	_SetupInit,88
	global	_Setup_USART2

;; *************** function _Setup_USART2 *****************
;; Defined at:
;;		line 10 in file "PhyLayer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  BaudRate        2   23[COMRAM] unsigned int 
;;  USART2Config    1   25[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Open2USART
;; This function is called by:
;;		_SetupInit
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"PhyLayer.c"
	line	10
global __ptext3
__ptext3:
psect	text3
	file	"PhyLayer.c"
	line	10
	global	__size_of_Setup_USART2
	__size_of_Setup_USART2	equ	__end_of_Setup_USART2-_Setup_USART2
	
_Setup_USART2:
;incstack = 0
	opt	stack 25
	line	12
	
l995:
;PhyLayer.c: 12: unsigned char USART2Config=0;
	movlw	low(0)
	movwf	((c:Setup_USART2@USART2Config)),c
	line	13
;PhyLayer.c: 13: unsigned int BaudRate=0;
	movlw	high(0)
	movwf	((c:Setup_USART2@BaudRate+1)),c
	movlw	low(0)
	movwf	((c:Setup_USART2@BaudRate)),c
	line	15
	
l997:
;PhyLayer.c: 15: TRISBbits.RB6=0;
	bcf	((c:3987)),c,6	;volatile
	line	16
	
l999:
;PhyLayer.c: 16: TRISBbits.RB7=1;
	bsf	((c:3987)),c,7	;volatile
	line	25
;PhyLayer.c: 19: USART2Config=0b01111111
;PhyLayer.c: 20: &0b10111111
;PhyLayer.c: 21: &0b11111110
;PhyLayer.c: 22: &0b11111101
;PhyLayer.c: 23: &0b11111111
;PhyLayer.c: 24: &0b11111111
;PhyLayer.c: 25: &0b11011111;
	movlw	low(01Ch)
	movwf	((c:Setup_USART2@USART2Config)),c
	line	26
;PhyLayer.c: 26: BaudRate=51;
	movlw	high(033h)
	movwf	((c:Setup_USART2@BaudRate+1)),c
	movlw	low(033h)
	movwf	((c:Setup_USART2@BaudRate)),c
	line	27
	
l1001:
;PhyLayer.c: 27: RCSTA2&=0b01001111,TXSTA2bits.TXEN=0,PIE3&=0b11001111;
	movlw	(04Fh)&0ffh
	andwf	((c:3953)),c	;volatile
	
l1003:
	bcf	((c:3954)),c,5	;volatile
	
l1005:
	movlw	(0CFh)&0ffh
	andwf	((c:4003)),c	;volatile
	line	28
	
l1007:
;PhyLayer.c: 28: Open2USART(USART2Config, BaudRate);
	movff	(c:Setup_USART2@BaudRate),(c:Open2USART@spbrg)
	movff	(c:Setup_USART2@BaudRate+1),(c:Open2USART@spbrg+1)
	movf	((c:Setup_USART2@USART2Config)),c,w
	
	call	_Open2USART
	line	29
	
l1009:
;PhyLayer.c: 29: IPR3bits.RC2IP=1;
	bsf	((c:4005)),c,5	;volatile
	line	30
	
l1011:
;PhyLayer.c: 30: PIE3bits.RC2IE=1;
	bsf	((c:4003)),c,5	;volatile
	line	31
	
l1013:
;PhyLayer.c: 31: PIR3bits.RC2IF=0;
	bcf	((c:4004)),c,5	;volatile
	line	32
	
l101:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Setup_USART2
	__end_of_Setup_USART2:
	signat	_Setup_USART2,88
	global	_Open2USART

;; *************** function _Open2USART *****************
;; Defined at:
;;		line 118 in file "/Applications/microchip/xc8/v1.35/sources/pic18/plib/USART/u2open.c"
;; Parameters:    Size  Location     Type
;;  config          1    wreg     unsigned char 
;;  spbrg           2   20[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  config          1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Setup_USART2
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"/Applications/microchip/xc8/v1.35/sources/pic18/plib/USART/u2open.c"
	line	118
global __ptext4
__ptext4:
psect	text4
	file	"/Applications/microchip/xc8/v1.35/sources/pic18/plib/USART/u2open.c"
	line	118
	global	__size_of_Open2USART
	__size_of_Open2USART	equ	__end_of_Open2USART-_Open2USART
	
_Open2USART:
;incstack = 0
	opt	stack 25
;Open2USART@config stored from wreg
	movwf	((c:Open2USART@config)),c
	line	120
	
l955:
	movlw	low(0)
	movwf	((c:3954)),c	;volatile
	line	121
	movlw	low(0)
	movwf	((c:3953)),c	;volatile
	line	123
	
l957:
	
	btfss	((c:Open2USART@config)),c,(0)&7
	goto	u281
	goto	u280
u281:
	goto	l961
u280:
	line	124
	
l959:
	bsf	((c:3954)),c,4	;volatile
	goto	l961
	
l153:
	line	126
	
l961:
	
	btfss	((c:Open2USART@config)),c,(1)&7
	goto	u291
	goto	u290
u291:
	goto	l965
u290:
	line	128
	
l963:
	bsf	((c:3954)),c,6	;volatile
	line	129
	bsf	((c:3953)),c,6	;volatile
	goto	l965
	line	130
	
l154:
	line	132
	
l965:
	
	btfss	((c:Open2USART@config)),c,(2)&7
	goto	u301
	goto	u300
u301:
	goto	l969
u300:
	line	133
	
l967:
	bsf	((c:3954)),c,7	;volatile
	goto	l969
	
l155:
	line	135
	
l969:
	
	btfss	((c:Open2USART@config)),c,(3)&7
	goto	u311
	goto	u310
u311:
	goto	l156
u310:
	line	136
	
l971:
	bsf	((c:3953)),c,4	;volatile
	goto	l973
	line	137
	
l156:
	line	138
	bsf	((c:3953)),c,5	;volatile
	goto	l973
	
l157:
	line	140
	
l973:
	
	btfss	((c:Open2USART@config)),c,(4)&7
	goto	u321
	goto	u320
u321:
	goto	l158
u320:
	line	141
	
l975:
	bsf	((c:3954)),c,2	;volatile
	goto	l977
	line	142
	
l158:
	line	143
	bcf	((c:3954)),c,2	;volatile
	goto	l977
	
l159:
	line	145
	
l977:
	
	btfss	((c:Open2USART@config)),c,(5)&7
	goto	u331
	goto	u330
u331:
	goto	l981
u330:
	line	146
	
l979:
	bsf	((c:3953)),c,3	;volatile
	goto	l981
	
l160:
	line	150
	
l981:
	
	btfss	((c:Open2USART@config)),c,(6)&7
	goto	u341
	goto	u340
u341:
	goto	l161
u340:
	line	151
	
l983:
	bsf	((c:4003)),c,5	;volatile
	goto	l985
	line	152
	
l161:
	line	153
	bcf	((c:4003)),c,5	;volatile
	goto	l985
	
l162:
	line	155
	
l985:
	
	btfss	((c:Open2USART@config)),c,(7)&7
	goto	u351
	goto	u350
u351:
	goto	l163
u350:
	line	156
	
l987:
	bsf	((c:4003)),c,4	;volatile
	goto	l164
	line	157
	
l163:
	line	158
	bcf	((c:4003)),c,4	;volatile
	
l164:
	line	160
	movff	(c:Open2USART@spbrg),(c:3957)	;volatile
	line	161
	
l989:
	movf	((c:Open2USART@spbrg+1)),c,w
	movwf	((c:3958)),c	;volatile
	line	163
	
l991:
	bsf	((c:3954)),c,5	;volatile
	line	164
	
l993:
	bsf	((c:3953)),c,7	;volatile
	line	165
	
l165:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Open2USART
	__end_of_Open2USART:
	signat	_Open2USART,8312
	global	_SetupPorts

;; *************** function _SetupPorts *****************
;; Defined at:
;;		line 73 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SetupInit
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"main.c"
	line	73
global __ptext5
__ptext5:
psect	text5
	file	"main.c"
	line	73
	global	__size_of_SetupPorts
	__size_of_SetupPorts	equ	__end_of_SetupPorts-_SetupPorts
	
_SetupPorts:
;incstack = 0
	opt	stack 26
	line	74
	
l831:
;main.c: 74: ANSELA = 0;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3896))&0ffh	;volatile
	line	75
;main.c: 75: ANSELB = 0;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3897))&0ffh	;volatile
	line	76
;main.c: 76: ANSELC = 0;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3898))&0ffh	;volatile
	line	78
	
l833:; BSR set to: 15

;main.c: 78: TRISBbits.RB7=1;
	bsf	((c:3987)),c,7	;volatile
	line	79
	
l835:; BSR set to: 15

;main.c: 79: TRISBbits.RB6=0;
	bcf	((c:3987)),c,6	;volatile
	line	81
	
l837:; BSR set to: 15

;main.c: 81: ANSELBbits.ANSB3=0;
	movlb	15	; () banked
	bcf	((3897))&0ffh,3	;volatile
	line	82
	
l839:; BSR set to: 15

;main.c: 82: TRISBbits.RB3=0;
	bcf	((c:3987)),c,3	;volatile
	line	83
	
l841:; BSR set to: 15

;main.c: 83: PORTBbits.RB3=0;
	bcf	((c:3969)),c,3	;volatile
	line	84
	
l64:; BSR set to: 15

	return	;funcret
	opt stack 0
GLOBAL	__end_of_SetupPorts
	__end_of_SetupPorts:
	signat	_SetupPorts,88
	global	_SetupClock

;; *************** function _SetupClock *****************
;; Defined at:
;;		line 65 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SetupInit
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	line	65
global __ptext6
__ptext6:
psect	text6
	file	"main.c"
	line	65
	global	__size_of_SetupClock
	__size_of_SetupClock	equ	__end_of_SetupClock-_SetupClock
	
_SetupClock:; BSR set to: 15

;incstack = 0
	opt	stack 26
	line	67
	
l829:
;main.c: 67: OSCCONbits.IRCF0 = 1;
	bsf	((c:4051)),c,4	;volatile
	line	68
;main.c: 68: OSCCONbits.IRCF1 = 1;
	bsf	((c:4051)),c,5	;volatile
	line	69
;main.c: 69: OSCCONbits.IRCF2 = 1;
	bsf	((c:4051)),c,6	;volatile
	line	70
	
l61:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_SetupClock
	__end_of_SetupClock:
	signat	_SetupClock,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 30 in file "Interrupt_manager.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart2Isr
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"Interrupt_manager.c"
	line	30
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:
;incstack = 0
	opt	stack 25
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	movff	pclat+0,??_ISR+0
	movff	pclat+1,??_ISR+1
	movff	fsr0l+0,??_ISR+2
	movff	fsr0h+0,??_ISR+3
	movff	fsr1l+0,??_ISR+4
	movff	fsr1h+0,??_ISR+5
	movff	fsr2l+0,??_ISR+6
	movff	fsr2h+0,??_ISR+7
	movff	prodl+0,??_ISR+8
	movff	prodh+0,??_ISR+9
	movff	tblptrl+0,??_ISR+10
	movff	tblptrh+0,??_ISR+11
	movff	tblptru+0,??_ISR+12
	movff	tablat+0,??_ISR+13
	line	54
	
i2l1081:
;Interrupt_manager.c: 54: if (PIR3bits.RC2IF && PIE3bits.RC2IE){
	btfss	((c:4004)),c,5	;volatile
	goto	i2u49_41
	goto	i2u49_40
i2u49_41:
	goto	i2l136
i2u49_40:
	
i2l1083:
	btfss	((c:4003)),c,5	;volatile
	goto	i2u50_41
	goto	i2u50_40
i2u50_41:
	goto	i2l136
i2u50_40:
	line	55
	
i2l1085:
;Interrupt_manager.c: 55: if(RC2STAbits.OERR == 1){
	btfss	((c:3953)),c,1	;volatile
	goto	i2u51_41
	goto	i2u51_40
i2u51_41:
	goto	i2l1089
i2u51_40:
	line	56
	
i2l1087:
;Interrupt_manager.c: 56: RC2STAbits.CREN =0;
	bcf	((c:3953)),c,4	;volatile
	line	57
;Interrupt_manager.c: 57: RC2STAbits.CREN = 1;
	bsf	((c:3953)),c,4	;volatile
	goto	i2l1089
	line	58
	
i2l135:
	line	59
	
i2l1089:
;Interrupt_manager.c: 58: }
;Interrupt_manager.c: 59: uart2Isr();
	call	_uart2Isr	;wreg free
	line	60
	
i2l1091:
;Interrupt_manager.c: 60: PIR3bits.RC2IF = 0;
	bcf	((c:4004)),c,5	;volatile
	goto	i2l136
	line	61
	
i2l134:
	line	62
	
i2l136:
	movff	??_ISR+13,tablat+0
	movff	??_ISR+12,tblptru+0
	movff	??_ISR+11,tblptrh+0
	movff	??_ISR+10,tblptrl+0
	movff	??_ISR+9,prodh+0
	movff	??_ISR+8,prodl+0
	movff	??_ISR+7,fsr2h+0
	movff	??_ISR+6,fsr2l+0
	movff	??_ISR+5,fsr1h+0
	movff	??_ISR+4,fsr1l+0
	movff	??_ISR+3,fsr0h+0
	movff	??_ISR+2,fsr0l+0
	movff	??_ISR+1,pclat+1
	movff	??_ISR+0,pclat+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_uart2Isr

;; *************** function _uart2Isr *****************
;; Defined at:
;;		line 35 in file "PhyLayer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Read2USART
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"PhyLayer.c"
	line	35
global __ptext8
__ptext8:
psect	text8
	file	"PhyLayer.c"
	line	35
	global	__size_of_uart2Isr
	__size_of_uart2Isr	equ	__end_of_uart2Isr-_uart2Isr
	
_uart2Isr:
;incstack = 0
	opt	stack 25
	line	36
	
i2l1041:
;PhyLayer.c: 36: BufferRxUART[iRx2XBAPI] = Read2USART();
	movf	((c:_iRx2XBAPI)),c,w
	mullw	01h
	movlw	low(_BufferRxUART)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_BufferRxUART)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	call	_Read2USART	;wreg free
	movwf	indf2,c

	line	38
	
i2l1043:
;PhyLayer.c: 38: if (iRx2XBAPI == 2){
		movlw	2
	xorwf	((c:_iRx2XBAPI)),c,w
	btfss	status,2
	goto	i2u40_41
	goto	i2u40_40

i2u40_41:
	goto	i2l1047
i2u40_40:
	line	40
	
i2l1045:
;PhyLayer.c: 40: PaqXBAPILen = BufferRxUART[2];
	movff	0+(_BufferRxUART+02h),(c:_PaqXBAPILen)
	goto	i2l1047
	line	41
	
i2l104:
	line	44
	
i2l1047:
;PhyLayer.c: 41: }
;PhyLayer.c: 44: if (iRx2XBAPI >= PaqXBAPILen + 3){
	movf	((c:_PaqXBAPILen)),c,w
	movwf	(??_uart2Isr+0+0)&0ffh,c
	clrf	(??_uart2Isr+0+0+1)&0ffh,c

	movlw	03h
	addwf	(??_uart2Isr+0+0),c
	movlw	0
	addwfc	(??_uart2Isr+0+1),c
	movf	((c:_iRx2XBAPI)),c,w
	movwf	(??_uart2Isr+2+0)&0ffh,c
	clrf	(??_uart2Isr+2+0+1)&0ffh,c

		movf	(??_uart2Isr+0+0),c,w
	subwf	(??_uart2Isr+2+0),c,w
	movf	(??_uart2Isr+2+1),c,w
	xorlw	80h
	movwf	(??_uart2Isr+4+0)&0ffh,c
	movf	(??_uart2Isr+0+1),c,w
	xorlw	80h
	subwfb	(??_uart2Isr+4+0)&0ffh,c,w
	btfss	status,0
	goto	i2u41_41
	goto	i2u41_40

i2u41_41:
	goto	i2l1057
i2u41_40:
	line	45
	
i2l1049:
;PhyLayer.c: 45: iRx2XBAPI=0;
	movlw	low(0)
	movwf	((c:_iRx2XBAPI)),c
	line	46
	
i2l1051:
;PhyLayer.c: 46: NoPaqXBAPI++;
	infsnz	((c:_NoPaqXBAPI)),c
	incf	((c:_NoPaqXBAPI+1)),c
	line	47
	
i2l1053:
;PhyLayer.c: 47: FlagPaqRx2=1;
	movlw	low(01h)
	movwf	((c:_FlagPaqRx2)),c
	goto	i2l106
	line	48
	
i2l1055:
;PhyLayer.c: 48: return ;
	goto	i2l106
	line	49
	
i2l105:
	line	50
	
i2l1057:
;PhyLayer.c: 49: }
;PhyLayer.c: 50: iRx2XBAPI++;
	incf	((c:_iRx2XBAPI)),c
	line	51
	
i2l106:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_uart2Isr
	__end_of_uart2Isr:
	signat	_uart2Isr,88
	global	_Read2USART

;; *************** function _Read2USART *****************
;; Defined at:
;;		line 17 in file "/Applications/microchip/xc8/v1.35/sources/pic18/plib/USART/u2read.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart2Isr
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"/Applications/microchip/xc8/v1.35/sources/pic18/plib/USART/u2read.c"
	line	17
global __ptext9
__ptext9:
psect	text9
	file	"/Applications/microchip/xc8/v1.35/sources/pic18/plib/USART/u2read.c"
	line	17
	global	__size_of_Read2USART
	__size_of_Read2USART	equ	__end_of_Read2USART-_Read2USART
	
_Read2USART:
;incstack = 0
	opt	stack 25
	line	21
	
i2l1015:
	movlw	(0F2h)&0ffh
	andwf	((c:_USART2_Status)),c
	line	23
	
i2l1017:
	btfss	((c:3953)),c,6	;volatile
	goto	i2u36_41
	goto	i2u36_40
i2u36_41:
	goto	i2l174
i2u36_40:
	line	25
	
i2l1019:
	bcf	((c:_USART2_Status)),c,0
	line	26
	btfss	((c:3953)),c,0	;volatile
	goto	i2u37_41
	goto	i2u37_40
i2u37_41:
	goto	i2l174
i2u37_40:
	line	27
	
i2l1021:
	bsf	((c:_USART2_Status)),c,0
	goto	i2l174
	
i2l175:
	line	28
	
i2l174:
	line	30
	btfss	((c:3953)),c,2	;volatile
	goto	i2u38_41
	goto	i2u38_40
i2u38_41:
	goto	i2l176
i2u38_40:
	line	31
	
i2l1023:
	bsf	((c:_USART2_Status)),c,2
	
i2l176:
	line	33
	btfss	((c:3953)),c,1	;volatile
	goto	i2u39_41
	goto	i2u39_40
i2u39_41:
	goto	i2l177
i2u39_40:
	line	34
	
i2l1025:
	bsf	((c:_USART2_Status)),c,3
	
i2l177:
	line	36
	movff	(c:3956),(c:Read2USART@data)	;volatile
	line	38
	
i2l1027:
	movf	((c:Read2USART@data)),c,w
	goto	i2l178
	
i2l1029:
	line	39
	
i2l178:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Read2USART
	__end_of_Read2USART:
	signat	_Read2USART,89
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	end
