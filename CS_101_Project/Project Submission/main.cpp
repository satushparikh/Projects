#include <simplecpp>
#include <string>
#include <sstream>
#include <iostream>
using namespace std;
#include "shooter.h"
#include "bubble.h"
#include <cmath>
// #include "bullet.h"

/* Simulation Vars */
const double STEP_TIME = 0.02;

/* Game Vars */
const int PLAY_Y_HEIGHT = 450;
const int LEFT_MARGIN = 70;
const int TOP_MARGIN = 20;
const int BOTTOM_MARGIN = (PLAY_Y_HEIGHT + TOP_MARGIN);

void move_bullets(vector<Bullet> &bullets)
{
    // move all bullets
    for (unsigned int i = 0; i < bullets.size(); i++)
    {
        if (!bullets[i].nextStep(STEP_TIME))
        {
            bullets.erase(bullets.begin() + i);
        }
    }
}

void move_bubbles(vector<Bubble> &bubbles)
{
    // move all bubbles
    for (unsigned int i = 0; i < bubbles.size(); i++)
    {
        bubbles[i].nextStep(STEP_TIME);
    }
}

vector<Bubble> create_bubbles()
{
    // create initial bubbles in the game
    vector<Bubble> bubbles; // vector of bubbles
    bubbles.push_back(Bubble(WINDOW_X / 2.0, BUBBLE_START_Y, BUBBLE_DEFAULT_RADIUS, -BUBBLE_DEFAULT_VX, 0, COLOR(255, 105, 180)));
    bubbles.push_back(Bubble(WINDOW_X / 4.0, BUBBLE_START_Y, BUBBLE_DEFAULT_RADIUS, BUBBLE_DEFAULT_VX, 0, COLOR(255, 105, 180)));
    return bubbles;
}

int main()
{
    initCanvas("Bubble Trouble", WINDOW_X, WINDOW_Y);

    Line b1(0, PLAY_Y_HEIGHT, WINDOW_X, PLAY_Y_HEIGHT);
    b1.setColor(COLOR(0, 0, 255));

    string msg_cmd("Cmd: _");
    Text charPressed(LEFT_MARGIN, BOTTOM_MARGIN, msg_cmd);

    // Intialize the shooter
    Shooter shooter(SHOOTER_START_X, SHOOTER_START_Y, SHOOTER_VX);

    // Initialize the bubbles
    vector<Bubble> bubbles = create_bubbles(); // vector of bubbles

    // Initialize the bullets (empty)
    vector<Bullet> bullets;
    //  cout<<bullet[0].get_center_y<<endl;//    get_center_y()

    XEvent event;

    vector<int> collision_of_shooter(100, 0); // by me

    // Creating text to be displayed for score,health and time
    string DisplayScore("Score :   ");
    string DisplayHealth("Health:   ");
    string DisplayTime("Time Left :   ");
    Text scorecard(400, 475, DisplayScore); // lower right
    Text health(370, 25, DisplayHealth);    // upper right
    Text Timelimit(50, 25, DisplayTime);    // upper left
    int kills = 0;
    int LiveHealth = 3;
    int Time = 50;

    int helpsMaintainTime = 0;
    bool gameover = 0;
    // Main game loop

    getClick(); // game starts after getting a click

    while (true)
    {
        // updating health counter
        int t = LiveHealth + 48; // asci of 0 is 48 and 1 is 49 and so on
        DisplayHealth[DisplayHealth.length() - 1] = t;//conveting integer into a string
        health.setMessage(DisplayHealth);

        helpsMaintainTime++;
        if (helpsMaintainTime % 25 == 0 && !gameover)// of order of a second
        {
            Time--; 
            DisplayTime[DisplayTime.length() - 3] = 48 + Time / 10;
            DisplayTime[DisplayTime.length() - 2] = 48 + Time % 10;
            Timelimit.setMessage(DisplayTime);
        }
        

        bool pendingEvent = checkEvent(event);
        if (pendingEvent)
        {
            // Get the key pressed
            char c = charFromEvent(event);
            msg_cmd[msg_cmd.length() - 1] = c;
            charPressed.setMessage(msg_cmd);

            // Update the shooter
            if (c == 'a')
                shooter.move(STEP_TIME, true);
            else if (c == 'd')
                shooter.move(STEP_TIME, false);
            else if (c == 'w')
                bullets.push_back(shooter.shoot());
            else if (c == 'q')
                return 0;
        }
        // Update the bubbles
        move_bubbles(bubbles);

        // Update the bullets
        move_bullets(bullets);

        // following for loop for detecting collision between bubble and bullet
        for (size_t j = 0; j < bullets.size(); j++)
        {
            
            for (size_t i = 0; i < bubbles.size(); i++)
            {                                           // distance between centers less than radiuses//0.8~0.707   1/sqrt(2)
                if (
                    (bullets[j].get_center_x() - bubbles[i].get_center_x()) * (bullets[j].get_center_x() - bubbles[i].get_center_x()) +
                        (bullets[j].get_center_y() - bubbles[i].get_center_y()) * (bullets[j].get_center_y() - bubbles[i].get_center_y()) <=
                    (bubbles[i].get_radius() + 0.8 * bullets[j].get_width()) * (bubbles[i].get_radius() + 0.8 * bullets[j].get_width())

                  )
                {//collision detected if this loop runs
                    if (bubbles[i].get_radius() > 10) // breaking into smaller bubbles for smaller bubbles;
                    {
    bubbles.push_back(Bubble(bubbles[i].get_center_x(), bubbles[i].get_center_y(), 0.5 * bubbles[i].get_radius(), -bubbles[i].get_vx() - 40, bubbles[i].get_vy(), COLOR(255, 105, 180)));
 bubbles.push_back(Bubble(bubbles[i].get_center_x(), bubbles[i].get_center_y(), 0.5 * bubbles[i].get_radius(), bubbles[i].get_vx() + 40, bubbles[i].get_vy(), COLOR(255, 105, 180)));
                    }
                    kills++;
                    bullets.erase(bullets.begin() + j);
                    bubbles.erase(bubbles.begin() + i);

                    j = j - 1;//since j+1 th bullet got shifted to j th
                    break;
                }
            }
        }

        // Score counter updated after its condition is checked
        DisplayScore[DisplayScore.length() - 3] = kills / 10 + 48;
        DisplayScore[DisplayScore.length() - 2] = kills % 10 + 48;
        scorecard.setMessage(DisplayScore);




        // for loop for collsion between bubble and shooter
        for (size_t z = 0; z < bubbles.size(); z++)
        {
            if (                                                             // for efficient coding,  using code for bubbles in lower half
                bubbles[z].get_center_y() >= (390 - bubbles[z].get_radius()) // 450-2*30-radius//blueline -2 length-radius
            )
            {
                if (fabs(bubbles[z].get_center_x() - shooter.get_body_center_x()) <= (bubbles[z].get_radius() + 9)         // condition for intersection in x
                    &&                                                                                                     // condition for intersection in y
                    fabs((shooter.get_body_center_y() - 8) - bubbles[z].get_center_y()) <= (bubbles[z].get_radius() + 20)) // height=30, double width=18, double head_radius=8
                {
                    collision_of_shooter[z] = 1;
                } // bubble[z] collides

                else if (collision_of_shooter[z])
                {
                    collision_of_shooter[z] = 0; // when this else if runs bubble will be just leaving the shooter;so we will decrease health

                    LiveHealth--;

                    if (LiveHealth == 0)
                    {
                        gameover = 1;
                        DisplayHealth[DisplayHealth.length() - 1] = 48;
                        health.setMessage(DisplayHealth);
                        
                        break;
                    }
                }
            }
        }

        if (Time == 0 || gameover)
        {
            for (size_t z = 0; z < bubbles.size(); z++)
            {
                bubbles.erase(bubbles.begin() + z);
            }
            Text gameover(250, 250, "Game Over");
            break;
        }
        if (bubbles.size() == 0)
        {
            Text win(300, 300, " Win");
            wait(1000);
        }

        wait(STEP_TIME);
    } // bracket of while loop gets close

    Text gaMeover(250, 250, "Game Over");

    wait(1000);

}

// bracket of int main() gets over
//  //collision detected when distance between centers of bubble and bullets< radius+
//   cout<<bullets[j].get_center_y()<<endl;

//    cout<<bullets.size()<<endl;//by me
//    if(bullets.size()>=0)
//    cout<<bubbles[0].get_center_y()<<endl;
// cout<<bubbles.size()<<endl;

//   cout<<bullets.size()<<endl;

// DisplayHealth[DisplayHealth.length()-1]=LiveHealth;
// DisplayScore[DisplayScore.length()-1]=kills;
// DisplayTime[DisplayTime.length()-1]=Time;
// string ActualScore=to_string(kills);
// DisplayScore+=kills;
// char healthHelper=48+LiveHealth;

// Text Hearts(460,25,LiveHealth);
// Text killll(465,475,kills);
// Text remainingTime(100,25,Time);
// time is a 2 digit number   Time  10a+b  // Updating time counter
// int tensTime = Time / 10;

// DisplayTime[DisplayTime.length() - 3] = tensTime;
// DisplayTime[DisplayTime.length() - 2] = Time % 10;
// Timelimit.setMessage(DisplayTime);

// int tensKills=kills/10;
// DisplayScore[DisplayScore.length()-2]=kills/10;
// DisplayScore[DisplayScore.length()-1]=kills%10;
// scorecard.setMessage(DisplayScore);