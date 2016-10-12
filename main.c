/*
 * File:   main_NMC.c
 * Author: Guillermo ARB
 *
 * Created on October 2016
 * Código para enrutamiento de prueba de nodo NMC
 */

#define _XTAL_FREQ 32000000
#define USE_AND_MASKS


// LIBRERÍAS
#include <xc.h>
#include "config.h"
#include <stdio.h>
#include "PhyLayer.h"
//#include <plib/timers.h>
//#include "XBeeAPI16Bits.h"
//#include "Utilities.h"
#include "Interrupt_manager.h"

void SetupInit(void);
void SetupClock(void);

void putch(char data);
void SetupPorts();


main(){
    //__delay_ms(1);
    SetupInit();            //Inicializar sensores y procesos.
    //printf("NMC v0.0");
    while(1){
      for(unsigned char i=0;i<=50;i++){
      __delay_ms(10);
    }

    PORTBbits.RB3=!PORTBbits.RB3;

    while(!TXSTA2bits.TRMT);
    Write2USART(0x0A);

    if(FlagPaqRx2){
      while(!TXSTA2bits.TRMT);
      Write2USART(PaqXBAPILen);
    }

      //printf("Hallo weld!!!");
    }
}



void SetupInit()  //Funci�n de inicializacion de funciones y procesos.
{
    SetupClock();
    SetupPorts();
    Setup_USART2();

    PEIE = 1;
    INTCONbits.GIE = 1;
}

void SetupClock() //Clock configuration.
{
    OSCCONbits.IRCF0 = 1;
    OSCCONbits.IRCF1 = 1;
    OSCCONbits.IRCF2 = 1;
}

//Configuracion de puertos
void SetupPorts() {
  ANSELA = 0;
  ANSELB = 0;
  ANSELC = 0;
  //UART 2
  TRISBbits.RB7=1;  //UART2 Rx Input
  TRISBbits.RB6=0;  //UART2 Tx Output
  //Salida CONTROL
  ANSELBbits.ANSB3=0;     //Salida Digital
  TRISBbits.RB3=0;        //RC5 Salida Bandera
  PORTBbits.RB3=0;
}

void putch(char data)
{
    while(!TX2IF)
    continue;
    TXREG2 = data;
}
