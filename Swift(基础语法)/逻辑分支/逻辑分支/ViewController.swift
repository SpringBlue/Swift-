//
//  ViewController.swift
//  逻辑分支
//
//   by dou on 17/4/10.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var toolBar: UIToolbar!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 监听键盘通知
        // object: 发送通知的对象, 如果是 nil 监听所有对象
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardChanged), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
        setupToolbar()
    }
    // MARK: - 键盘监听方法
    @objc private func keyboardChanged(noti: Notification) {
        print(noti)
        
    }
    /// 设置工具栏
    func setupToolbar() {
        
        let itemSettings = [["imageName": "compose_toolbar_picture"],
                            ["imageName": "compose_mentionbutton_background"],
                            ["imageName": "compose_trendbutton_background"],
                            ["imageName": "compose_emoticonbutton_background", "actionName": "emoticonKeyboard"],
                            ["imageName": "compose_add_background"]]
        
        // 遍历数组
        var items = [UIBarButtonItem]()
        for s in itemSettings {
            
            guard let imageName = s["imageName"] else {
                continue
            }
            
            let image = UIImage(named: imageName)
            let imageHL = UIImage(named: imageName + "_highlighted")
            
            let btn = UIButton()
            
            btn.setImage(image, for: [])
            btn.setImage(imageHL, for: .highlighted)
            
            btn.sizeToFit()
            
            // 判断 actionName
            if let actionName = s["actionName"] {
                // 给按钮添加监听方法
                btn.addTarget(self, action: Selector(actionName), for: .touchUpInside)
            }
            
            // 追加按钮
            items.append(UIBarButtonItem(customView: btn))
            
            // 追加弹簧
            items.append(UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil))
        }
        // 删除末尾弹簧
        items.removeLast()
        
        toolBar?.items = items
    }

    //#MARK:switch语句
    //switch：可以针对任意类型的值进行分支，不局限整数
    //switch：一般不需要break，如果需要穿透用，
    //所有分支至少需要一条指令，如果什么都不干，使用break
    func demo5(num:Int) {
        
        switch num {
        case 9,10:
            print("优")
        default:
            print("一般")
        }
    }
    
    //#MARK:if let和gurad let的命名技巧
    func demo4(name : String?,age : Int?) {
        guard let name = name,let age = age else {
            print("为空")
            return
        }
        print(name + String(age))
    }
    
    
    //guard let守护一定有值，如果没有直接返回
    //#MARK: gurad let连用
    func demo3() {
        let oName: String? = "laowang"
        let oAge: Int? = 10
        guard let name = oName, let age = oAge else {
            
            print("姓名年龄为空")
            
            return
        }
        print(name + String(age))
        
    }
    //#MARK: if let连用
    func demo2() {
        
        let oName: String? = "laowang"
        let oAge: Int? = 20
        
        if let name = oName, let age = oAge {
            print(name + String(age))
        
        } else {
            print("姓名年龄为空")
        }
    }
    
    //#MARK: 可选项的判断
    func demo1(x: Int?,y:Int?) {
        
        
        print((x ?? 0)+(y ?? 0))
        
        let name:String? = "laowang"
        
        print((name ?? "") + "nihao")
        
    }

    // #MARK: 简单的分支
    func demo()  {
        let x = 10
        if x > 6 {
            print("asd")
        } else {
            print("asda")
        }
        
    }

}

