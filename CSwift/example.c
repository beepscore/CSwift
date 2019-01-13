//
//  example.c
//  CSwift
//
//  Created by Steve Baker on 1/13/19.
//  Copyright © 2019 Beepscore LLC. All rights reserved.
//

#include "example.h"

// https://stackoverflow.com/questions/35106118/what-is-the-best-way-to-call-into-swift-from-c
// pointer to function mymodule_multiplied_by_two
intptr_t mymodule_multiplied_by_two(intptr_t);
intptr_t say_hello(void);

intptr_t invoke_multiplied_by_two(intptr_t x) {
    // call Functions.swift mymodule_multiplied_by_two from C
    intptr_t result = mymodule_multiplied_by_two(x);
    printf("result %ld\n", result);
    return result;
}

int32_t add_two(int32_t an_int) {
    invoke_multiplied_by_two(5);
    say_hello();

    return an_int + 2;
}

