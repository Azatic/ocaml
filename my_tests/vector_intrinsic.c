#include <riscv_vector.h>

void bigvector_add(long* array1, long* array2, long* result, int length) {
      int i;
      vint64m8_t vec1, vec2, vec_res;

      for (i = 0; i < length; i += 8) {
          vec1 = vle64_v_i64m8(array1 + i,8);
          vec2 = vle64_v_i64m8(array2 + i,8);
          vec_res = vadd_vv_i64m8(vec1, vec2,8);
          vse64_v_i64m8(result + i, vec_res, 8);
     }
 }

void add_vectors_xthead(int32_t *a, int32_t *b, int32_t *c, int size) {
    int i;
    for (i = 0; i < size; i += 1) {
        vint32m1_t va = vle32_v_i32m1(&a[i]); // Загружаем вектор a
        vint32m1_t vb = vle32_v_i32m1(&b[i]); // Загружаем вектор b
        vint32m1_t vc = _riscv_vadd_vv_i32m1(va, vb); // Складываем векторы
        vse32_v_i32m1(&c[i], vc); // Сохраняем результат в вектор c
    }
}
