//
//  Person.swift
//  09--构造函数(kvc)
//
//  Created by dou on 17/6/7.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit
/**
 1.定义属性的时候,如果是对象,通常是可选的
    -在需要的时候创建
    -避免写构造函数,可以简化代码
 2.如果是基本数据类型,不能设置可选的,要设置初始值,否则KVC会崩溃
 3.如果使用KVC设置数值,属性不能是Private的
 
 4.使用KVC方法之前使用super init()保证对象实例化完后
 */

class Person: NSObject {
    
    //name属性是可选的,在OC中很多属性都是在需要的时候创建的
    //延迟加载:在需要的时候再加载
    var name: String?
    
    // - 使用 KVC 会提示无法找到 age 的key
    // - 原因:int 是一个基础数据类型的结构体,OC中没有,OC中只有基本数据类型
    //var age: Int?
    var age: Int = 0
    
    
    //使用私有属行,使用KVC设置值的时候,同样无法设置
    //使用Private属性/方法禁止外部访问的
    private var title: String?
    
    
    //重载构造函数,使用自己字典设置初始值
    init(dict: [String:AnyObject]) {
        
        //保证对象已经初始化完成
        super.init()
        
        //KVC的方法,是OC的方法
        //在运行时给对象发送消息
        //*****要求对象已经实例化完成
        
        setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        //没有调用super,将父类的代码实现完全覆盖,就不会崩溃
    }
}
