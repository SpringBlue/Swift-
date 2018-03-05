//
//  Student.swift
//  08-构造函数
//
//  Created by dou on 17/6/6.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class Student: Person {
    //学号
    var no :String

    override init() {
        print("student init")
        no = "001"
        
        super.init()
    }
    
}
