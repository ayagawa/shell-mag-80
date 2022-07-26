#pragma comment(lib, "user32.lib")
#pragma comment(lib, "gdi32.lib")
#include <Windows.h>
#include <stdio.h>
#include <math.h>
#include "screen_int.f"
#include "pset.f"
#define e 0.01

float f(float x, float y){
    return x*x*x - 3*x*y*y + 1;
}

float fx(float x, float y){
    return 3*x*x - 3*y*y;
}

float g(float x, float y){
    return 3*x*x*y - y*y*y;
}

float gx(float x, float y){
    return 6*x*y;
}

float J(float x, float y){
    return 9*(x*x + y*y)*(x*x + y*y);
}



int main(){
    float xmin = -1, xmax = 1, ymin = -1, ymax = 1;
    int n = 256;

    float p1 = 1.0/2.0;
    float p2 = sqrt(3)/2.0;

    float p1_x = -1, p1_y = 0;
    float p2_x = p1, p2_y = p2;
    float p3_x = p1, p3_y = -p2;
    
    float dx = (xmax - xmin) / (n + 40);
    float dy = dx;


    screen_int(n + 40, n + 40, RGB(255, 255, 255));

    float x = xmin, y = ymin;

    for(int i = 0; i <= n + 40; i++){
        for(int j = 0; j <= n + 40; j++){
            int num = 0;
            x = xmin + j*dx;
            y = ymin + i*dy;

            while(1){
                float x1 = x - (fx(x, y)*f(x, y) + gx(x, y)*g(x, y))/J(x, y);
                float y1 = y - (-gx(x, y)*f(x, y) + fx(x, y)*g(x, y))/J(x, y);

                if(fabs(p1_x - x1) < e && fabs(p1_y - y1) < e){
                    pset(i, j, RGB(255, 0, 0));
                    goto fin;
                }else if(fabs(p2_x - x1) < e && fabs(p2_y - y1) < e){
                    pset(i, j, RGB(0, 255, 0));
                    goto fin;
                }else if(fabs(p3_x - x1) < e && fabs(p3_y - y1) < e){
                    pset(i, j, RGB(0, 0, 255));
                    goto fin;
                }
                num++;
                x = x1 , y = y1;

                if(num > 1000){
                    pset(i, j, RGB(0, 0, 0));
                    goto fin;
                }
            }fin:;
        }
    } 

}
