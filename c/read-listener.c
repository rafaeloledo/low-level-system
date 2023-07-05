#include <stdio.h>

/*
* This is my first example using while(1), it may be upgraded or refactored
* along the time
*/

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

