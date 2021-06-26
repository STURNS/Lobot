#include <stdio.h>
#include <unistd.h>
#include "demo_driver.h"

int main(int argc, char *argv[])
{
    printf("hello cmake\n");
    demo_driver();
    sleep(10);
    return 0;
}
