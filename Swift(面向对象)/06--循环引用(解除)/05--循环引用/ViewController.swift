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
        
        //解除循环引用需要打断链条
        //方法1.OC的方式
        //只能使用var,不能使用let
        //weak可能会在运行时被修改 ->指向的对象一旦被释放,会自动指向nil
//        weak var weakSelf = self
//
//        loadData {
        
            //解包有两种方式
            //?可选解包 - 如果self已经被释放,不会向对象发送getter的消息
            //!强行解包 - 如果self已经被释放,强行解包会导致崩溃
            
            /**
             weakSelf?.view只是单纯的发送消息,没有计算
             强行解包,因为需要计算,可选项不能直接参与到计算
            */
//            print(weakSelf?.view)
        
//        }
       //方法2 - Swift推荐的方法
        //[weak self]表示 {} 中所有 self 都是弱引用,需要注意解包
        loadData { [weak self] in
            
            print(self?.view as Any)
        }
        //方法3 - Swift另外一个用法
        // [unowned self]表示 {} self 都是assign,不会强引用,但对象释放,指针地址不变
        //如果对象释放,继续调用,就会出现野指针的问题
//        loadData { [unowned self] in
//            print(self.view)
//        }
    }
    
    func loadData(completion: @escaping ()->()) -> () {
        
        DispatchQueue.global().async {
            
            
            Thread.sleep(forTimeInterval: 2)
            print("耗时操作")
            //使用属性 记录闭包 ->self对闭包引用了
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

