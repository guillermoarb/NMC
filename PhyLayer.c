
#include <plib/usart.h>

unsigned char BufferRxUART[80];
unsigned char FlagPaqRx2=0;
unsigned char iRx2XBAPI=0;
unsigned char PaqXBAPILen=0;
unsigned int  NoPaqXBAPI=0;

void Setup_USART2(){
    //Declaración de Variables
    unsigned char USART2Config=0;
    unsigned int BaudRate=0;

    TRISBbits.RB6=0;        //TX es salida
    TRISBbits.RB7=1;        //RX es entrada

    //Configuración USART
    USART2Config=USART_TX_INT_OFF   //Interrupcion por Ttransmisión: Off
            &USART_RX_INT_OFF       //Interrupcion por Recepción: Off
            &USART_ASYNCH_MODE      //Modo Asíncrono
            &USART_EIGHT_BIT        //Transmision de 8bits
            &USART_CONT_RX          //Recepción Continua
            &USART_BRGH_HIGH        //Baudios
            &USART_ADDEN_OFF;       //Detección de Dirección OFF
    BaudRate=51;            //Valor que se carga a SPRBH para Definir BaudRate = 9600
    Close2USART();          //Cierra USART2 en caso de estar previamente abierto.
    Open2USART(USART2Config, BaudRate); //Abre USART2
    IPR3bits.RC2IP=1;       //Receive Interrupt: High Priority
    PIE3bits.RC2IE=1;       //Receive Interrupt: Enabled
    PIR3bits.RC2IF=0;       //Reset de EUSART2 Receive Interrupt Flag
}


void uart2Isr(void){
  BufferRxUART[iRx2XBAPI] = Read2USART();
  // Se recive suficiente informacion para determinar la longitud del paquete
  if (iRx2XBAPI == 2){
  //PutByteUART1(BufferRxUART[2]);
    PaqXBAPILen = BufferRxUART[2]; //Se obtiene la longitud del paquete esperado
  }
  //Terminacion por longitud de paquete esperado
  //Si se ha alcanzado el final del paquete esperado
  if (iRx2XBAPI >= PaqXBAPILen + 3){
  iRx2XBAPI=0; //Se cierra el paquete
  NoPaqXBAPI++; //Se aumenta el contador de paquetes recividos
  FlagPaqRx2=1; //Se habilita bandera de nuevo paquete
  return ;
  }
  iRx2XBAPI++;
}
