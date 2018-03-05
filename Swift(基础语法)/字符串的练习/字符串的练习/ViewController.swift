//
//  ViewController.swift
//  字符串的练习
//
//  Created by dou on 17/5/18.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo1()
        
    }
    
    //MARk:字符串子串
    //建议使用NSString作为中转，swift取子串的方法一直在改变
    func demo4 () {
        
        let str = "我们一起去飞"
        let ocStr = str as NSString
        let s1 = ocStr.substring(with: NSMakeRange(2, 3))
        print(s1)
        
        
        let s2 = str.substring(from: "我们".endIndex)
        print(s2)
        
        
        //取字符串的范围
        
    }
    //MARK:字符串格式化
    func demo3() {
        let h = 12
        let m = 9
        let s = 6
        
        let str = String(format: "%02d:%02d:%02d", h,m,s)
        
        print(str)
        
    }
    
    //字符串的拼接
    func demo2() {
        let name = "老王"
        let age = 18
        let title:String? = "BOSS"
        let str = "\(name) \(age) \(title ?? "")"
        print(str)
    }
    
    //MARK:字符串的长度
    func demo1() {
        let str:String = "HelloWorld你好"

        //1.返回指定编码的字节数
        print(str.lengthOfBytes(using: .utf8))
        
        //2.字符串长度（推荐使用）
        print(str.characters.count)
        //3.使用NSSting中转
        let ocStr = str as NSString
        print(ocStr.length)
    }
    //MARK:字符串的遍历
    func demo() {
        let str:String = "HelloWorld"
        for c in str.characters {
            print(c)
        }
    }
   
    
}

