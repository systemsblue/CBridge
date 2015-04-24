//
//  main.swift
//  CBridgeTest
//
//  Created by Kei on 2015/04/24.
//  Copyright (c) 2015年 systemsblue. All rights reserved.
//
import Foundation

class MySwiftClass : NSObject{
    func disp(str:NSString){
        println("Swift : \(str)")
    }
    func add(a:Int, b:Int) -> Int{
        return a + b;
    }
}

var my = MyObjcClass()

var str:NSString = "NS String / Swift";
my.disp(str as String)
my.callSwift1()
my.callSwift2()
my.callSwift3()

var i:CInt = 0
var cstr = UnsafeMutablePointer<CChar>.alloc(10)

getStr(cstr)
println(String.fromCString(cstr)!)

getInt(&i)
println("number : \(i)")

var ii:CInt = 0
var cstr2 = [CChar](count:20, repeatedValue:0)

var cst1 = cStruct(name:&cstr2, number:ii)
getStruct1(&cst1)
println("\(String.fromCString(cst1.name)!) : \(cst1.number)")

var cst2:cStruct = getStruct2()
println("\(String.fromCString(cst2.name)!) : \(cst2.number)")

var cst3:UnsafeMutablePointer<cStruct> = getStruct3()
println("\(String.fromCString(cst3.memory.name)!) : \(cst3.memory.number)")



