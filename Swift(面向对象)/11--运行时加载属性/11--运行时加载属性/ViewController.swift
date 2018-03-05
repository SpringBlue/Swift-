//
//  ViewController.swift
//  11--运行时加载属性
//
//  Created by dou on 17/6/8.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(Person.propertyList())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

