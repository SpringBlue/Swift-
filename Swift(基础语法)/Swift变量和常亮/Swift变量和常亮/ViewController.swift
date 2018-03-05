//
//  ViewController.swift
//  Swift变量和常亮
//
//  Created by dou on 17/4/5.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //原始定义
        let x:Optional = 10
        

        print(x as Any)
        
        
        //简单定义
        let y:Int? = 20
        
        print(y as Any)
        
        
        print(x!+y!)
        
        
        //变量的可选项默认值为nil
        var z: Int?
        print(z)
        
        demo()
        
    }

    func demo() {
        
        //定义变量和常亮
        
        var x : Double = 10
        x = 10.5
        let y = 20.5
        
        print(x+y)
    }


}

