#include <stdio.h>

void main() {
  int n, m, x;
  n = 1;
  m = 2;
  x = 5;

  while (x > n) {
    if (n == m)
      printf("%d", n);
    else
      printf("%d", "0");
    x = x - 1;
  }
}
