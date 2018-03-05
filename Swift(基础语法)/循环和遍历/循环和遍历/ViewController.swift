//
//  ViewController.swift
//  循环和遍历
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
    //遍历倒序输出
    func demo1() {
        for i in (0..<5).reversed() {
            print(i)
        }
        
        for i in 0..<5 {
            print(i)
        }
        let r1 = 0..<5
        print(r1)
        
        let r2 = 0...5
        print(r2)
    }
}

