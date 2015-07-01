//
//  main.swift
//  SwiftDemo2
//
//  Created by 1 on 15/6/16.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

import Foundation
//一个变量（或者常量）在我们使用前我们需要声明它
//声明时使用var或者let
//如果初始值没有提供足够的信息(或者没有初始值)
//那你需要在变量后面声明类型,用冒号分割。
//
let value:Double = 94

//值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型,请显式转换。
let label = "The width is"
let width = 120
let widthLabel = label + String(width)

//有一种更简单的把值转换成字符串的方法
//把值写到括号中,并且在括号之前写一个反斜杠。
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruibt."
println("apple is" + appleSummary+" fruit is"+fruitSummary)


//使用方括号[]来创建数组和字典,并使用下标或者键(key)来访问元素。
//数组
var phones = ["iPhone","iPod touch","小米","安卓"]
//修改数组
phones[1] = "iPad"
//获取其中一个值
var iphone = phones[2]
println(phones)
println("result is :" + iphone)

//字典
var users = ["name":"张三","psd":"123456","height":1.75]
//修改字典
users["name"] = "李四"
println(users)
//或者值
var height = users["height"]
println(height)

//要创建一个空数组或者字典,使用初始化语法。
//间括号内部声明容器类內存放的对象类型
var emptyArray = Array<NSObject>()
emptyArray = ["1","2","3",4]
println(emptyArray)

var emptyDictionary = Dictionary<String, Float >()
emptyDictionary=["张三":1.75]
println(emptyDictionary)


let numbers = [1,2,7,4,6,5,3]
var number = 0
//for循环，不在需要括号，其中scroe代表其中取的值
for scroe in numbers {
    println(scroe)
    //if判断语句
    if scroe > 3
    {
        number += 1
    }else
    {
        number += 3
    }
}
println("number is \(number)")
//for循环字典
let user = ["张三":"男","李四":"女","赵五":"男"]
for (name,sex) in user{
    println(" name: " + name + " sex: " + sex)

}



//判断变量a是否存在
//首先声明常量name等于a，如果name（a）存在修改b的值
//b的值为name（a）＋b
var a:String? =  "Hello"
var b:String = "World"
if let name = a
{
    b="\(name) , \(b) "
}
println(b)

//switch 支持任意类型的数据以及各种比较操作——不仅仅是整数以及测试相等。
let color = "black"
var colorComment:String
switch color
{
    case "red":
        colorComment = "This is red"
    case "blue":
        colorComment = "This is blue"
    case "white","black":
        colorComment = "This is white or black"
    default:
        colorComment = "I don't konw what color"
}
println(colorComment)


