#include <stdio.h>
#include <string.h>

void *my_memcpy(void *dest, const void *src, size_t n) {
    asm volatile (
        "mv a3, %0\n"          // Копируем адрес назначения в a3
        "1:\n"
        "vsetvli t0, a2, e8, m8\n"	// Устанавливаем длину вектора 8 ба�
	"vle64.v v0, (a1)\n"					// �т
                 // Загружаем байты
        "add a1, a1, t0\n"          // Увеличиваем указатель источника
        "sub a2, a2, t0\n"          // Декрементируем счетчик
        "vse64.v v0, (a3)\n"          // Сохраняем байты
        "add a3, a3, t0\n"          // Увеличиваем указатель назначения
        "bnez a2, 1b\n"             // Проверяем, есть ли еще байты для копирования
        :
        : "r"(dest), "r"(src), "r"(n)
        : "memory", "a1", "a2", "a3", "t0", "v0"
    );

    return dest;
}

int main() {
    char src[] = "Hello, World!";
    char dest[20];
    size_t n = strlen(src) + 1;

    printf("Source string: %s\n", src);

    my_memcpy(dest, src, n);

    printf("Copied string: %s\n", dest);

    return 0;
}

