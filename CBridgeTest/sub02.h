//
//  sub02.h
//  CBridgeTest
//
//  Created by Kei on 2015/04/24.
//  Copyright (c) 2015年 systemsblue. All rights reserved.
//

#ifndef __CBridgeTest__sub02__
#define __CBridgeTest__sub02__

#include <stdio.h>
#include <string.h>

void getInt(int *i);
void getStr(char *str);

typedef struct{
    char *name;
    int number;
} cStruct;

void getStruct1(cStruct *st);
cStruct getStruct2();
cStruct* getStruct3();

int add(int a, int b);

#endif /* defined(__CBridgeTest__sub02__) */
