/* @section I N C L U D E S */
#include <AT89C513xA.h>
#define LCD_data P2
#define LCD_rs P0_0
#define LCD_rw P0_1
#define LCD_en P0_2

void LCD_Init();
void LCD_DataWrite(unsigned char dat);
void LCD_CmdWrite(unsigned char cmd);
void LCD_sdelay(unsigned int delay);


void LCD_Init()
{
	sdelay(100);
	LCD_CmdWrite(0x38);
	LCD_CmdWrite(0x0C);
	LCD_CmdWrite(0x01);
	LCD_CmdWrite(0x06);

}

void LCD_CmdWrite(unsigned char cmd)
{
	LCD_data = cmd;
	LCD_rs = 0;
	LCD_rw = 1;
	LCD_en = 1;
	sdelay(5);
	LCD_en=0;
	sdelay(5);
}

void LCD_DataWrite(unsigned char dat)
{
	LCD_data = dat;
	LCD_rs = 1;
	LCD_rw = 0;
	LCD_en = 1;
	sdelay(5);
	LCD_en=0;
	sdelay(5);
}

void main(void)
{
	P2 = 0x00;
	LCD_Init();
	while(1)
	{
		sdelay(500);
	        LCD_Cmdwrite(0x85);
	        sdelay(18);
	        LCD_DataWrite('p');
	}
}

void sdelay(unsigned int delay)
{
	char d=0;
	while(delay>0)
	{
		for(d=0; d<5; d++);
		delay--;
	}
}