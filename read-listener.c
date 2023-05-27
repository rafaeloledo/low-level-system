#include <stdio.h>

void read_listener () {
  char input = '\0';
  while(1) {
    scanf("%c", &input);
    if (input != '\n') {
      printf("This is what your entered: %c", input);
      break;
    }
  }
}

int main () {
  read_listener();
}

