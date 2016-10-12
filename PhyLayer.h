

extern unsigned char 	FlagPaqRx2;
extern unsigned char 	BufferRxUART[80];

extern unsigned char 	iRx2XBAPI;
extern unsigned char 	PaqXBAPILen;
extern unsigned int 	NoPaqXBAPI;

void Setup_USART2();
void uart2Isr(void);
