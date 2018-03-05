//
//  ViewController.swift
//  01--按钮的状态
//
//  Created by dou on 17/5/26.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let btn = UIButton()
        btn.setTitle("点击", for: UIControlState.normal)
        btn.setTitleColor(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), for: UIControlState.normal)
        btn.sizeToFit()
        btn.center = view.center
        view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

