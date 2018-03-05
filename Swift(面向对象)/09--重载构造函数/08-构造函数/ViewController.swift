//
//  ViewController.swift
//  08-构造函数
//
//  Created by dou on 17/6/6.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

/**
 swift所有的类，和共用的属性都能访问的到
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //()-> alloc init
        
        let p = Person(name: "wang")
        
        print(p.name)
        
     
    }
    

    

}

