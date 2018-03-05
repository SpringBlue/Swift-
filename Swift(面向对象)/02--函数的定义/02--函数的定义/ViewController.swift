//
//  ViewController.swift
//  02--函数的定义
//
//  Created by dou on 17/5/31.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //swift1.0形参全部省略
        //swift2.0第一个形参省略
        //swift3.0调用方式
        print(sum2(40, 60))
        print(sum1(num1: 30, num2: 60))
        print(sum(x: 50, y: 10))
        
        print(sum3())
        print(sum3(x: 10))
        print(sum3(y: 20))
    }
    
    //MARK:无返回值 直接省略 主要用于闭包
    func demo1 () -> Void {
        
        print("啊哈哈")
    }
    //通过给参数设置默认值可以给任意组合参数，如果不指定的，那就使用默认值
    //OC中需要定义很多方法，以及方法实现，最终调用包含所有参数的那个函数
    func sum3(x: Int = 1,y:Int = 2) -> Int {
        return x + y
    }
    //外部参数如果使用_，在外部调用函数市，会忽略形参的名字
    func sum2(_ x:Int,_ y:Int) -> Int {
        
        return x+y
       
    }
    //MARK:外部参数就是在形参前加名字
    //外部参数会让外部调用方看起来更加直观
    func sum1(num1 x:Int,num2 y:Int) -> Int {
        
        return x+y
    }

    func sum(x:Int,y:Int) -> Int {
        
        return x+y
    }
    

}

