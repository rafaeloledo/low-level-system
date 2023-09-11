#include <iostream>
#include <thread>

void read_listener() {
    char input = '\0';
    std::cin >> input;

    std::cout << "1" << std::endl;
    if (input != '\n') {
        std::cout << "This is what you entered: " << input << std::endl;
    }
}

int main() {
    std::thread threadObj(read_listener);
    threadObj.join();
    return 0;
}

