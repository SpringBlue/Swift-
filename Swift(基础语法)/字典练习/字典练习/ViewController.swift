//
//  ViewController.swift
//  字典练习
//
//  Created by dou on 17/5/22.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo4()
    }

    //4.合并
    func demo4() {
        var dict1:[String:Any] = ["name":"zhang","age":"18"]
        let dict2:[String:Any] = ["xing":"li","nianling":19]
    
        for e in dict2{
            
            dict1[e.key] = dict2[e.key]
        }
        
        print(dict1)

    }
    //3.增删改
    func demo3() {
        var dict:[String:Any] = ["name":"zhang","age":18]
        
        dict["title"] = "大哥"
        
        print(dict)
        
        dict.removeValue(forKey: "name")
        print(dict)
        
        
    }
    //2.遍历
    func demo2() {
        let dict:[String:String] = ["name":"zhang","age":"18"]
        
        for e in dict {
            print("\(e.key) \(e.value)")
        }
        for (key,value) in dict {
            print("\(key),\(value)")
        }
    }
    //1.定义
    func demo1() {
        
        let dict:[String:Any] = ["name":"zhang","age":18]
        print(dict)
        
        //定义字典的数组，这种模式在开发中用到的最多
        let array:[[String:Any]]  = [["name":"zhang","age":18],["name":"zhang","age":"18"]]
        
        print(array)
    }


}

