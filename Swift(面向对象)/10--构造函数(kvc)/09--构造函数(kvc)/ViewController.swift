//
//  ViewController.swift
//  09--构造函数(kvc)
//
//  Created by dou on 17/6/7.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let p = Person(dict: ["name":"zhang" as AnyObject,"age":10 as AnyObject])
        
        let s = Student(dict: ["name":"zhang" as AnyObject,"no":"001" as AnyObject,"xxx":"asd" as AnyObject])
        print("\(s.name)------\(s.no)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

