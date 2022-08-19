#include "iostream"
#include "Counter.cpp"
#include "Condition.cpp"
int main() {
    muduo::Counter c;
    std::cout << c.getAndIncrease() << std::endl;
    return 0;
}
