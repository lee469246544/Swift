//
//  main.swift
//  SwiftDemo1
//
//  Created by Lee on 15/6/16.
//  Copyright (c) 2015年 Lee. All rights reserved.
//
/*
Swift，苹果于2014年WWDC（苹果开发者大会）发布的新开发语言，可与
Objective-C*共同运行于Mac OS和iOS平台，用于搭建基于苹果平台的应用程序。
Objective-C是Apple操作系统在导入Swift前使用的编程语言。
Swift语法内容混合了OC,JS,Python,语法简单，使用方便，并可与OC混合使用。
*/


/*
    导入基本库Foundation
    里面定义了swift的最基本的类，以及相关类
*/
import Foundation
//在控制台里面打一个输出，
//输出最常用的俩中，print、以及println，俩者的区别为是否在输出结束时带换行
print("Hello, World!")
println("Hello, World!")


//var是variable的一个缩写，代表变量的意思
//也就是说下面这个话的意思代表创建一个变量，变量名为'myName'
//变量值为'Lee'，其中值是可以修改的，其只能指向一个值
//当你重新指向的时候会将之前值给覆盖了。

var myName = "swift Basic tutorial"
myName = "Lee"
println("My name is " + myName)

//var起变量名时无法起之前有过的变量名
//var myName = "Lee"
var firstName = "Lee"
var lastName = "WK"
println("My name is" + lastName + firstName )

//变量可以记录字符串，数字（numbers）也可以被记录
//声明过后的对象在赋值的时候就已经初始化好了
//int类型是无法接受double而double类型是可以接受int
var myString = "This is string 4"
var myIntNumber = 4
var myDoubleNumber = 4.0
//myIntNumber = 4.0
myDoubleNumber = 2
println(myDoubleNumber)

//我们可以使用数学去计算
var first = 18
var second = 4
var result = first + second
println(result)

//var代表声明的是一个变量，而let声明代表的一个不可以更改的值
let name = "Swift"
//name = "IOS"


//如果你不想创建时给这个变量赋值，那么你就可以采用以下方式创建变量并声明其类型
var newString:String
var newInteger:Int
var newDouble:Double

//问题1:以下输出是多少？
var favoriteFood = "Apple"
println(favoriteFood)
//答案：Apple

//问题2:int 与 double直接有什么区别
var age = 23
let pi = 3.1415926
//答案：int 与 double 是俩个不同的类型在swift中，
//int 可以容纳整数，double 可以容纳小数
//记住,swift自动知道你希望使用哪种类型

//问题3:var与let有什么区别
var juice = "orange juice"
let newName = "Swifty"
//var创建的对象可以进行改变，let创建的对象会一直这个值不会进行改变

//基本知识总结
//我们现在学会最简单的swift，如何创建一个var和let，并且明白俩者区别
//并且学会了如何输出它们




