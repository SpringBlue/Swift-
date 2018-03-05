//
//  ViewController.swift
//  04--GCD
//
//  Created by dou on 17/5/31.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //尾随闭包
        //如果函数的最后一个参数就是闭包,函数可以直接结束,最后一个参数直接使用{},包装闭包的代码
            loadData { (result) in
                print(result)
        }
        
        }
    /**
        异步执行任务,获取结果,通过闭包回调
    */
    
    func loadData(completion: @escaping ( _ result:[String])->()) ->(){
        //将任务添加到队列,指定执行的任务的函数
        DispatchQueue.global().async {
            print("耗时操作\(Thread.current)")
            
            //休眠
            Thread.sleep(forTimeInterval: 1)
            
            let json = ["头条","新闻","娱乐"]
            DispatchQueue.main.async(execute: { 
                
                print("主线程刷新UI\(Thread.current)")
                completion(json)
            })
            
        }
    }
    
}

