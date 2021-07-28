

#include "demo_driver.h"
#include "demo_driver2.h"

#include "platform.h"

int main(int argc, char *argv[])
{
    printf("main entry\n");
    demo_driver_d1();
    demo_driver_d2();
    demo_driver_d3();
    demo_driver2();
    sleep(10);
    return 0;
}