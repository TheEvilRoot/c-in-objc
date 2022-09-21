#include "libmy.h"

#include <Foundation/Foundation.h>

int main() {
    NSLog(@"Value is %d", libmy_get_value(12));
    return 0;
}
