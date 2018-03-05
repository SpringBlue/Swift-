//
//  ViewController.swift
//  TableView
//
//  Created by dou on 17/5/22.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpTableView()
    }
    
    func setUpTableView() {
        let tv = UITableView(frame: view.bounds, style: .plain)
        
        view.addSubview(tv)
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tv.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
        
    }
}

