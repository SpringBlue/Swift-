//
//  ViewController.swift
//  Swift开发初体验
//
//  Created by dou on 17/4/5.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class ViewController: UIViewController {
    
    
    //MARK: -视图生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        let v:UIView = UIView(frame: CGRect(x: 0, y: 20, width: 100, height: 100))
        
        //TODO: 阿萨德
        v.backgroundColor = UIColor.red // FIXME: 更改头像
        
        view.addSubview(v)

        
        let btn  = UIButton(type:.contactAdd)
        
        btn.backgroundColor = #colorLiteral(red: 0.966427505, green: 0.2251538634, blue: 0.5874905586, alpha: 1)
        btn.addTarget(self, action: #selector(click), for: .touchUpInside)

        v.addSubview(btn)
        
        
    }
    
    func click(btn:UIButton) -> () {
        print("/asdasd")
        print(#function)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

