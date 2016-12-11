
#include<conio.h>
#include<graphics.h>
#include<stdlib.h>

using namespace std;

int main()
{
 int gdriver = DETECT, gmode, errorcode;
int x, y, i,j;
//int xradius, yradius;
// x=getmaxx();y=getmaxy();xradius=x/2;yradius=y/2;
/* initialize graphics and local variables */
initgraph(&gdriver, &gmode, "C:\\TURBOC3\\BGI");

/* read result of initialization */
errorcode = graphresult();
if (errorcode != grOk) {  /* an error occurred */
  cout<<"Graphics error: %s\n"<<grapherrormsg(errorcode);
  cout<<"Press any key to halt:";
  getch();
  exit(1);          /* terminate with an error code */
}
//cout<<x<<"\&"<<y<<"\,x-radius"<<xradius<<"\& yradius"<<yradius; //returns all 0
outtextxy(310,200,"Loading\.\.\.Please wait\.\.\.");
do
{
for(i=1;i<=360;i++)
{
for(j=1;j<=40;j++)
{
arc(250,200,0,i,j) ;
}
}
setcolor(rand()%600);
}while(!kbhit());
getch();
clearviewport();
closegraph();

return 0;
}
