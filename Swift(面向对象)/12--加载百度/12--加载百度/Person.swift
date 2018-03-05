//
//  Person.swift
//  12--加载百度
//
//  Created by dou on 17/6/8.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    /**
     1.便利构造函数允许返回nil
       -正常的函数一定会创造对象
       -判断给定的参数是否符合条件,如果不符合直接返回nil,不会创造对象,减少内存开销
     2.只有便利构造函数---使用 'self.init()' 构造当前对象
        没有convenience的构造函数是用来创造对象的,反之用来检查条件,不负责对象的创建
     
     3.如果在便利构造函数使用当前对象属性,一定在self.init之后
     */
    var name: String?
    var age: Int = 0
    convenience init?(name: String, age:Int) {
        if age>100 {
            return nil
        }
    
        //实例化对象
        self.init()
    
        //执行到self才允许被访问,才能够访问到对象属性
        self.name = name
    }
    //类似于OC的dealloc
    //析构函数
    deinit {
        //1.跟踪对象的销毁
        //2.必须释放
        /**
            - 通知,不释放不会崩溃,但是会泄露
            - KVO,不释放会崩溃
            - NSTimer / CAdisplayLink
         */
    }
    
}
