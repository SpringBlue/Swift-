
//
//  Button+extension.swift
//  07--加法计算器
//
//  Created by dou on 17/6/8.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

extension UIButton {
    
    convenience init (title: String,color:UIColor = UIColor.darkGray) {
        self.init()
        self.setTitle(title, for: UIControlState.normal)
        self.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        self.sizeToFit()
    }
}
