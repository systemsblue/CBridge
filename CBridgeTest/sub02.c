//
//  sub02.c
//  CBridgeTest
//
//  Created by Kei on 2015/04/24.
//  Copyright (c) 2015年 systemsblue. All rights reserved.
//

#include "sub02.h"
#include <stdlib.h>
#include <string.h>

#include <objc/objc.h>

void getInt(int *i){
    *i = 1234;
}

void getStr(char *str){
    strcpy(str, "C String / Clang");
}

void getStruct1(cStruct *st){
    st->name = "name of cStruct1";
    st->number = 1111;
}
cStruct getStruct2(){
    cStruct *st = malloc(sizeof(cStruct));
    st->name = "name of cStruct2";
    st->number = 2222;
    return *st;
}
cStruct* getStruct3(){
    cStruct *st = malloc(sizeof(cStruct));
    st->name = "name of cStruct3";
    st->number = 3333;
    return st;
}


