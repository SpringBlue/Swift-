//
//  Person.swift
//  11--运行时加载属性
//
//  Created by dou on 17/6/8.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String?
    var age: Int = 0
    var title: String?
    
    //使用运行时,获取当前类的所有属性
    class func propertyList() -> ([String]) {
        
        var count: UInt32 = 0
        //1.获取类的属性列表
        
        let list =  class_copyPropertyList(self, &count)
        print("属性的数量\(count)")
        
        
        //2.遍历数组
        //        for i in 0..<Int(count) {
        //
        //            //3.根据下标获取属性
        //            let p = list?[i]
        //
        //            //4.获取属性语言的C语言的字符串
        //            //Int8 -> Byte -> Char -> C语言的字符串
        //            let cName = property_getName(p!)
        //
        //            //5.转换字符串
        //            let name = String(utf8String: cName!)
        //
        //            print(name as Any)
        //
        //        }
        for i in 0..<Int(count) {
            
            //3.根据下标获取属性
            //使用guard语法依次判断是否有值,只要有一项为nil,就不在执行后续的代码
            guard let p = list?[i],let cName = property_getName(p),
                let name = String(utf8String: cName) else {
                    continue
            }
            
            //5.转换字符串
            print(name)
            
        }
        //3.释放C语言对象
        free(list)
        return []
    }
    
}
