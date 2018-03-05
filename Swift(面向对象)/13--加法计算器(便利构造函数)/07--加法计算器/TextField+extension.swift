//
//  TextField+extension.swift
//  07--加法计算器
//
//  Created by dou on 17/6/8.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

//extension类似OC category 

extension UITextField {
    
    convenience init(frame: CGRect, placeholder: String,fontSize: CGFloat = 14) {
        
        self.init(frame:frame)
        //访问属性
        self.borderStyle = .roundedRect
        self.placeholder = placeholder
        self.font = UIFont.systemFont(ofSize: fontSize)
    }
}
