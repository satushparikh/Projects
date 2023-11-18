/* #include<simplecpp>
#include<iostream>
#include<stdlib.h>
#include<string>
#include<vector>
#include<cmath>
#include<assert.h>
#include<map>
using namespace std;
void nextEvent(XEvent &event);
int main()
{

    initCanvas("Draw using Mouse",800,500);
    const char escapekey='\33';
    XEvent event;
    short lastx=0,lasty=0;
    while(1)
    {
        nextEvent(event);
        if (mouseButtonPressEvent(event))
        {
            lastx=event.xmotion.x;
            lasty=event.xmotion.y;
        }
        if (mouseDragEvent(event))
        {
imprintLine(lastx,lasty,event.button.x,
             event.xbutton.y;)
            // lastx=event.xmotion.x;
            // lasty=event.xmotion.y;
        }


    }

    return 0;
} */
#include<simplecpp>
#include<iostream>
#include<stdlib.h>
#include<string>
#include<vector>
#include<cmath>
#include<assert.h>
#include<map>
using namespace std;
int main()
{
initCanvas();
XEvent event;
nextEvent(event);
if(mouseButtonPressEvent(event)){
cout <<"Mouse button "<< event.xbutton.button
<<" pressed, at position ("<< event.xbutton.x <<
<<", "<< event.xbutton.y << endl;
}

    return 0;
}
