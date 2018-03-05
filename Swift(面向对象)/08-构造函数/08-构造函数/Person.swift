//
//  Person.swift
//  08-构造函数
//
//  Created by dou on 17/6/6.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

/**
 1.给自己属性分配空间并设置初始值
 2.调用父类构造函数,给父类的属性分配空间设置初始值
 NSObject 没有属性,只有一个成员变量'isa'
 */

class Person: NSObject {
    var name: String
    override init () {
        
        print("peson init")
        name = "zhang"
        //提示self.name初始化 ->分配空间,设置初始值
        
        super.init()
        
        
    }
}
