#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<riscv-vector.h>

#define vlen 128
#define sew 16
#define vmul 1
#define ISUNSIGN 0
#define VCTYPE "int16"

int main(int argc, char **argv)
{
    int vlmax = vmul*vlen/sew;
    int N=5;
    int avl[6] = {vlmax, vlmax-1, 2*vlmax-1, 2*vlmax+1000, 2*vlmax, 0};
    short int expect;
    int16xm1_t bb;
    int rte = 0;
    unsigned int gvl=0;
    long long max = 0;
    long long min = 0;
    char *name = argv[0];
    for(int t=0; t<N; t++) {
        gvl = vsetvli(vlmax, RVV_E16, RVV_M1);
        bb=vmvvi_int16xm1(15, gvl);
        for(int i=0; i<vlmax; i++) {
            if ( i < avl[t] )  {
                expect = 15;
            } else {
                expect =  0;
            }
            if ( bb[i]- expect != 0) {
                rte = -1;
            }
            printf("Expect = %d, Actual = %d, avl = %d\n",expect, bb[i], avl[t]);
        }
    }
    if ( rte != 0 )
        printf("FAIL: %s\n",name);
    else
        printf("PASS: %s\n",name);
    return rte;
}
