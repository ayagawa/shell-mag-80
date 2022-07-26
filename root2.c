#include <stdio.h>
#include <math.h>
#define e 0.000001

double func(double x){
    return x*x - 2;
}

double dfunc(double x){
    return 2*x;
}

double g(double x){
    return x - func(x) / dfunc(x);
}

int main(){
    double x0 = 1.0;
    double x1, ans;

    while(1){
        x1 = g(x0);

        if(fabs(x1 - x0) <= e){
            ans = x1;
            break;
        }

        x0 = x1;

        printf("%f\n", x1);
    }

    printf("√2 ≒ %f\n", ans);
}
