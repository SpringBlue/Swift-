//
//  ViewController.swift
//  07--加法计算器
//
//  Created by dou on 17/6/5.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numText1: UITextField?
    var numText2: UITextField?
    var resuleLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpUi()
        
    }
    func calc () {
        print(#function)
        print("\(numText1?.text)-----\(numText2?.text)")
        
        //将文本框内容转换为数值
        //Int? 如果文本框不是数字 Int之后是nil
//         let num1 = Int(numText1?.text ?? "" )
        
//        print("\(num1)")
        guard let num1 = Int(numText1?.text ?? "0"),let num2 = Int(numText2?.text ?? "") else {
            
            print("必须输入数字才能呢计算")
            return
        }
        
        resuleLabel?.text = "\(num1+num2)"
        
    }

    func setUpUi() -> () {
        
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        tf1.borderStyle = .roundedRect
        tf1.text = "0"
        view.addSubview(tf1)
        
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        tf2.borderStyle = .roundedRect
        tf2.text = "0"
        view.addSubview(tf2)
        
        numText1 = tf1
        numText2 = tf2
        
        let l1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30))
        l1.textAlignment = .center
        l1.text = "+"
        view.addSubview(l1)
        
        let l2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 30))
        l2.textAlignment = .center
        l2.text = "="
        view.addSubview(l2)
        
        
        let l3 = UILabel(frame: CGRect(x: 240, y: 20, width: 60, height: 30))
        l3.textAlignment = .right
        l3.text = "0"
        view.addSubview(l3)
        
        resuleLabel = l3
        
        let btn = UIButton()
        btn.setTitle("计算", for: UIControlState.normal)
        btn.setTitleColor(UIColor.black, for: UIControlState.normal)
        btn.addTarget(self, action: #selector(calc), for: .touchUpInside)

        btn.sizeToFit()
        btn.center = view.center
        view.addSubview(btn)
        
    }
    
}

