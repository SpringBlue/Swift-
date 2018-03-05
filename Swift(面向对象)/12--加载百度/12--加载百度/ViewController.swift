//
//  ViewController.swift
//  12--加载百度
//
//  Created by dou on 17/6/8.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let p = Person(name: "老王", age: 5)
        
        print(p?.name as Any)
        //URL的构造函数可以返回nil
        let url = URL(string: "http://www.baidu.com")
        
        
        //发起网络请求
        
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
            
            guard let loadData = data else {
                print("网络请求失败\(error)")
                return
            }
    
            //将data转为string
            let html = String(data: loadData, encoding: .utf8)
            
            print(html as Any)
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

