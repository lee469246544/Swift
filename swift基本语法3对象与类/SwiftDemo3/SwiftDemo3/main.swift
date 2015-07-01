//
//  main.swift
//  SwiftDemo3
//
//  Created by 1 on 15/6/17.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

import Foundation

//创建一个People类
class People {
    //类的初始化方法,当初始化时会调用，没有参数
    init(){
        println("init new People")
        
    }

    
    //声明一个属性自动生成set、get方法
    var name:String = "Lee"{
        willSet(aName){
        //willSet 在设置新的值之前调用,传的值为将要改变的值
        println("name old name is :\(self.name) aName is \(aName)")
        
        }
        didSet(aName){
        //didSet 在新的值被设置之后立即调用，传的值为改变之前的值
            println("name old name is :\(self.name) aName is \(aName)")
            
        }
    }
    
    var age:Int = 0
    
    
    
    //方法：无参数无返回
    func ageAdd(){
        age++
//      self.age++
    }
    //方法:有参数无返回
    func ageChanged(newAge:Int){
        self.age = newAge
    }
    //方法:无参数有返回
    func getAge() -> Int {

        return self.age
    }
    //方法:有参数有返回
    func isBigger(newAge:Int) -> Bool{
        if(self.age > newAge ){
            return true;
        }else{
            return false;
        
        }
    }
    
    
    //类方法：在方法前添加static
    static func printLog(){
        println("hello world")
    
    
    }
    
    
    
}

//创建一个People
var people:People = People();
//设置people的name属性
people.name = "张三"
people.name = "李四"
people.age = 2
people.ageAdd()
var name:Int = people.getAge()
println("People age is " + String(name))

let isbigger = people.isBigger(-2)
if(isbigger)
{
    println("People YES")

}else{
    println("People NO")

}

//调用一个类方法
People.printLog()




//类型别名为现有类型定义的可替代名称。
//你可以使用typealias关键字定义类型别名。类型别名可以帮助你使用更符合上下文语境的名字来指代一个已存在的类型
typealias 字符串 = String
typealias 整型 = Int


class 人 {
    var 名字:字符串 = "未命名"
    var 年龄:整型 = 0
    func 打印对象(){
        println("打印人，名字:\(名字) + 年龄:\(年龄)")
        
    }
    
    
}

var 张三 = 人();
张三.名字 = "张三"
张三.年龄 = 31
张三.打印对象()


class 超人: 人 {
    var 超能力:字符串 = "帅"
    //当想要重写父类的方法的时候
    //需要对该方法声明override覆盖
    override func 打印对象() {
        //父类的方法添加新的功能的话super
        super.打印对象()
        println("超能力 : \(超能力)")
    }
    
}

var 钢铁侠 = 超人();
钢铁侠.名字 = "钢铁侠"
钢铁侠.年龄 = 35
钢铁侠.打印对象()



