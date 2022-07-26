#include <stdio.h>
#include <math.h>
#define e 0.000001

double f(double x){
    return x*x - 1;
}

double df(double x){
    return 2*x;
}

int main(){
    double x = 1;
    double x1 = 2.5;
    double x2;

    while(1){
        x2 = x1 - f(x1)/df(x1);
        if(fabs(x - x2) < e){
            break;
        }

        x1 = x2;
    }

    printf("%f\n", x2);
}