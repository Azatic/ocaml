#include <caml/mlvalues.h>
#include <caml/memory.h>

CAMLprim value popcount(value arg)
{
	CAMLparam1(arg);

	CAMLreturn(Val_int(0));
}
int myfunc(int n, int e, int y)
{
    CAMLparam3(n,e,y);

	CAMLreturn (Val_int(0));
}

CAMLprim value caml_check(value arg)
{
		CAMLparam1(arg);

		CAMLreturn(Val_int(12));
}
int factorial(int n)  
{
  if (n == 0)  
    return 1;  
  else  
    return(n * factorial(n-1));  
}

CAMLprim value caml_fac(value n)
{
		CAMLparam1(n);

		CAMLreturn(Val_int(factorial(Int_val(n))));
}
