//
//  example.h
//  CSwift
//
//  Created by Steve Baker on 1/13/19.
//  Copyright © 2019 Beepscore LLC. All rights reserved.
//

// ifndef avoids including multiple times
#ifndef example_h
#define example_h

#include <stdio.h>

// import stdbool.h for bool
#include <stdbool.h>

// Swift sees true as Int32 == 1
#define HAPPY true

#define FIVE 5
#define NEGATIVE_THREE -3
#define FIVE_PT_NINE 5.9

#define DOG_NAME "fido"

// https://developer.apple.com/documentation/swift/imported_c_and_objective-c_apis/using_imported_c_structs_and_unions_in_swift
struct Color {
    float r, g, b;
};
typedef struct Color Color;

struct House {
    int num_floors;
    float price;
    char* name;
    bool is_big;
};
typedef struct House House;

#endif /* example_h */
