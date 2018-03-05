//
//  Person.swift
//  08-构造函数
//
//  Created by dou on 17/6/6.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit
/**
 1.构造函数的目的:给自己属性分配空间并设置初始值
 2.调用父类构造函数之前,需要先给本类的属性设置初始值
 2.调用父类构造函数,给父类的属性分配空间设置初始值
  NSObject 没有属性,只有一个成员变量'isa'
 3.如果重载了构造函数,并且没有实现父类init方法,系统不再提供 init() 构造函数(默认是会有的)
 -因为默认的构造函数,不能给本类的属性分配空间
 */

class Person: NSObject {
    var name: String?
//    override init () {
//        
//        //重写 父类有这个方法
//        //问题:name所有的初始值是zhang
//        name = "zhang"
//        
//        
//        super.init()
//    }
    //重载,函数名相同,参数和个数不同
    //--重载可以给自己的属性在外部设置初始值
    init(name: String) {
        //参数的name 设置给属性
       self.name = name
        
        super.init()
    }
    
}
