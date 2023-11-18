#include<iostream>
#include<stdlib.h>
#include<string>
#include<vector>
#include<cmath>
#include<algorithm>
#include<assert.h>
#include<map>
#include<sstream>
#include<unordered_map>
using namespace std;
int main()
{
     string msg_cmd("Cmd: _");
      msg_cmd[msg_cmd.length() - 1] = 50;
      cout<<msg_cmd<<endl;

    return 0;
}





















/*  #include<simplecpp>
 #include <iostream>
#include <string> // for string and to_string()
using namespace std;
int main()
{
initCanvas();
    Text score(200,200,"Name");
    int i=0,j=0;
    string DisplayHealth("Health: _");
     Text    health(370,25,DisplayHealth);//upper right
        int LiveHealth=3;
    while ( i<1000000000 )
    {

      string stri ="s";
      DisplayHealth+=stri;
    //   DisplayHealth[DisplayHealth.length()-1]=LiveHealth;

      LiveHealth++;

        wait(0.1);
    }


}   */
// C++ code to demonstrate "to_string()" method
// to convert number to string.
/* #include <iostream>
#include <string> // for string and to_string()
using namespace std;

// Driver Code
int main()
{
    // Declaring integer
    int i_val = 20;

    // Declaring float
    float f_val = 30.50;

    // Conversion of int into string using
    // to_string()
    string stri = to_string(i_val);

    // Conversion of float into string using
    // to_string()
    string strf = to_string(f_val);

    // Displaying the converted strings
    cout << "The integer in string is : ";
    cout << stri << endl;
    cout << "The float in string is : ";
    cout << strf << endl;

    return 0;
} */



// string msg_cmd("Cmd: _");
    //    msg_cmd[msg_cmd.length() - 1] = c;
/* #include<iostream>
using namespace std;

int main()
{
string msg_cmd("Cmd: _");
cout<<msg_cmd.length()<<endl;

} */
 // Get the key pressed
/*             char c = charFromEvent(event);
            msg_cmd[msg_cmd.length() - 1] = c;
            charPressed.setMessage(msg_cmd); */
    //         string msg_cmd("Cmd: _");
    // Text charPressed(LEFT_MARGIN, BOTTOM_MARGIN, msg_cmd);

/*
       Text    health(370,25,DisplayHealth);//upper right
        int LiveHealth=3;
      DisplayHealth[DisplayHealth.length()-1]=LiveHealth; */
/*   #include<iostream>
  #include<stdlib.h>
  #include<string>
  #include<vector>
  #include<cmath>
  #include<algorithm>
  #include<assert.h>
  #include<map>
  #include<sstream>
  #include<unordered_map>
  using namespace std;
  int main()
  {
// string number=3;
// cout<<number;

       string msg_cmd("Cmd: _");
//   /*    cout<<msg_cmd<<endl;
//               char c=3;
// string s=c;
// string old=msg_cmd+s;
// cout<<old; *
int i=708;
string s = to_string(i);
 msg_cmd=msg_cmd+s;
//msg_cmd=msg_cmd+to_string(i);
cout<<msg_cmd;





      return 0;
  } */
   //    cout<<c<<endl;
    //    msg_cmd[msg_cmd.length() - 1] ='\0' ;
    //   cout<<msg_cmd<<endl;
    /*   char c;
      for(int i=0;i<256;i++)
      {
          c=i;
          cout<<c<<" ";
          if(i%10==0)  cout<<endl;
      } */
    //    char c=3;
    //    cout<<c<<endl;
// A program to demonstrate the use of stringstream
/* #include <iostream>
#include <sstream>
#include<string>
using namespace std;
 
int main()
{
    // string s = "12345";
 
    // // object from the class stringstream
    // stringstream geek(s);
 
    // // The object has the value 12345 and stream
    // // it to the integer x
    // int x = 0;
    // geek >> x;
 
    // // Now the variable x holds the value 12345
    // cout << "Value of x : " << x;
    //   char c;
    //   for(int i=0;i<256;i++)
    //   {
    //       c=i;
    //       cout<<c<<" ";
    //       if(i%10==0)  cout<<endl;
    //   }
    //  cout<<endl;
    //  char i='1';
    // //  int d=i;
    // //  cout<<d;

    //  printf("\n%d %c",i-1,i-1);
    //  printf("\n%d %c",i,i);
    //  printf("\n%d %c",i+9,i+9);
    //  char ccc=50;
    //  cout<<endl<<ccc;
    // //  printf("\n%d %c",i);
    // //  printf("\n%d %c",i);

    string s="mynames  ";
    s(s.size()-1)='a';
    cout<<s<<endl;
 
    return 0;
} */