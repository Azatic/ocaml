//#include <caml/mlvalues.h>
//#include <caml/memory.h>

//}
int vec_add(int n, int e)
{
	return 1;
}

//CAMLprim value caml_check(value arg)
//{
//		CAMLparam1(arg);

//		CAMLreturn(Val_int(12));
//}
int factorial(int n)  
{
  if (n == 0)  
    return 1;  
  else  
    return(n * factorial(n-1));  
}

//CAMLprim value caml_fac(value n)
//{
//		CAMLparam1(n);

//		CAMLreturn(Val_int(factorial(Int_val(n))));
//}  
