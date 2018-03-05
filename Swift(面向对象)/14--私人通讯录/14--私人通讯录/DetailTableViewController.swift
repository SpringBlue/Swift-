//
//  DetailTableViewController.swift
//  14--私人通讯录
//
//  Created by dou on 17/6/12.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

protocol completionCallBackDelegate:NSObjectProtocol {
    
    func completionCallBack() -> ()
}

class DetailTableViewController: UITableViewController {
    
    weak var delegate:completionCallBackDelegate?
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var titileTextField: UITextField!
    
    var person:Person?
    
    /// 完成回调属性
    var completionCallBack:(()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //如果Person不为空,设置UI
        if person != nil {
            nameTextField.text = person?.name
            phoneTextField.text = person?.phone
            titileTextField.text = person?.title
        }
        
    }
    
    @IBAction func savePeson(_ sender: Any) {
        
        // 1.判断person是否为nil
        if person == nil {
            person = Person()
        }
        // 2.用UI更新内容
        person?.name = nameTextField.text
        person?.phone = phoneTextField.text
        person?.title = titileTextField.text
        
        // 3.执行闭包回调
        // OC中执行block必须判断是否有值,否则会崩溃
        // ?解包 -> 如果闭包为nil ,就什么也不做
        completionCallBack?()
        
        if delegate != nil {
            delegate?.completionCallBack()
        }
        // 4.返回上级页面
        // _可以忽略一切不关心的内容
        _ = navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   

}
