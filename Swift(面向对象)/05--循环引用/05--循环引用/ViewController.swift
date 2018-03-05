//
//  ViewController.swift
//  05--循环引用
//
//  Created by dou on 17/6/1.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var completionCallback: (()->())?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //只是闭包对self 进行了copy,闭包执行完成之后会自动销毁,释放对self的引用
        //self对闭包引用
        loadData { 
            print(self.view)
        }
        
        
    }

    func loadData(completion:   @escaping ()->()) -> () {
        
        DispatchQueue.global().async {
            print("耗时操作")
            //使用属性 记录闭包
            self.completionCallback = completion
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    //类似于OC的dealloc
    deinit {
        print("被释放了")
    }
}

