#include <8051.h>   
void msec (int x)    
{ 
while(x-->0)  
{ 
TH0 = (-10000)>>8;  
TL0=-10000;
TR0=1;     
do; 
while(TF0==0);     
TF0=0;       
TR0=0;       
} 
}
void main()     
{ 
TMOD=0x1;
P1=0x0;
P1=0x9;
msec(400);
P1=0x12;
msec(400);
P1=0x24;
msec(400);
P1=0xC0;
msec(200);
P1=0x0; 
while(0); 
}
