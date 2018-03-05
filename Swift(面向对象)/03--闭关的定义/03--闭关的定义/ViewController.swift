//
//  ViewController.swift
//  03--闭关的定义
//
//  Created by dou on 17/5/31.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /**
        1.提前准备好的代码
        2.在需要时执行
        3.可以当做参数传递
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //1.最简单的闭包
        //没有返回值可以全部省略
        let b1 = {
            print("Hello")
        }
        b1()
        //2.带参数的闭包
        //闭包中的参数,返回值实现代码都在{}
        //需要使用一个关键字in,分割定义和实现
        let b2 = { (x: Int, y:Int) ->() in
            
            print(x,y)
        }
        
        b2(10, 10)
        let b3 = { (x: Int, y:Int) ->(Int) in
            
            return x + y
        }
        
        print(b3(20, 30))
    }

    //使用常亮记录函数的演练
    func demo() {
        let f = sum
        
        //在需要的时候执行
        print(f(20, 40))
    }
    func sum(x: Int,y: Int) -> Int {
        
        return x+y
    }



}

