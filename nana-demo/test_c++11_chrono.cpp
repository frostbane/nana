//  g++ -std=gnu++14 test_c++11_chrono.cpp -o test_c++11_chrono.cpp.exe

#include <cstdlib>
#include <iostream>
#include <chrono>
#include <thread>

using namespace std::chrono_literals;

int main()
{
    std::cout << "Hello waiter" << std::endl;
    auto start = std::chrono::high_resolution_clock::now();
    std::this_thread::sleep_for(2s);
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double, std::milli> elapsed = end-start;
    std::cout << "Waited " << elapsed.count() << " ms\n";

    return EXIT_SUCCESS;

}
