//
//  ViewController.swift
//  数组练习
//
//  Created by dou on 17/5/19.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo2()
    }
    //#MARK:数组合并
    func demo4() {
        var array = ["张三","李四","王五",0]
        let array2 = ["老刀",1]
        
        //要合并数组的类型必须一致
        array += array2
        print(array)
    }
    //初始化指定数组容量，避免插入数据时，重新分配空间，效率会提高点
    //#MARK:数组增删改
    func demo3() {
        var array = ["张三","李四","王五"]
        
        array.append("赵四")
        
        print(array)
        array[0] = "小王"
        print(array)
        
        
    }
    //#MARK:数组的遍历
    func demo2() {
        let array = ["张三","李四","王五"]

        //1.按照下标遍历
        for i in 0 ..< array.count  {
            print("遍历的内容是\(array[i])")
        }
        //2.for in 遍历
        for str in array {
            print(str)
        }
        //3.enum block遍历 同时遍历下标和内容
        //元组
        for e in array.enumerated() {
            print("------\(e.offset) \(e.element)")
        }
        //4.遍历下标和内容2
        for (n,s) in array.enumerated() {
            print("-------\(n)\(s)")
        }
        //5.数组反序遍历
        for s in array.reversed() {
            print(s)
        }
        //6.反序遍历下标和内容
        for s in array.enumerated().reversed() {
            print(s)
        }
    }
    
    func demo1() {
        let arrary = ["张三","李四","王五"]
        print(arrary)
        
        let p = CGPoint(x: 10, y: 20)
        
        let array3 = [p]
        print(array3)
    }
}

