#include <stdio.h>
#include <string.h>
#include <stdint.h>
//#include <riscv_vector.h>
#include <stdlib.h>


int16_t* vector_add(int16_t* a, int16_t* b, int16_t* c, size_t n) {
    asm (
        "mv t1, a2\n"       
        "loopik:\n"
        "vsetvli t0, a3, e16, m1\n"
	"vle16.v v0, (a0)\n"
	"vle16.v v1, (a1)\n"
	"vadd.vv v2, v1, v0\n"
                     
        "sub a3, a3, t0\n"         
        "vse16.v v2, (a2)\n"        
        "add t0, t0, t0\n"
	"add a0, a0, t0\n"
	"add a1, a1, t0\n"
	"add a2, a2, t0\n"
        "bnez a3, loopik\n"           
	"mv a2, t1\n"
    );

    return c;
}

int main() {
    size_t length = 103;

    int16_t *array1 =(int16_t*)malloc(2*length);
    int16_t *array2 =(int16_t*)malloc(2*length);
    int16_t *result = (int16_t*)malloc(2*length);



	   

    for (int i = 0; i < length; i++) {
        array1[i] = i;
        array2[i] = i;
    }   
    printf("The direction of s[0] is: %p\n", &array1);
    printf("The direction of s[1] is: %p\n", &array2);
    printf("The direction of s[2] is: %p\n", &result);
   
   
   
    vector_add(array1, array2, result, length);

    for(size_t i = 0; i < length; ++i)
    {
	    printf("%d ", result[i]);
    }

    vector_add(array1, array2, result, length);


    return 0;
}


