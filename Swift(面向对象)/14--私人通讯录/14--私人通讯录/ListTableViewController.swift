//
//  ListTableViewController.swift
//  14--私人通讯录
//
//  Created by dou on 17/6/12.
//  Copyright © 2017年 dou. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController,completionCallBackDelegate {
    
    var indexPath = IndexPath()
    /// 联系人数组
    var personList = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData { (list) in
            
            print(list)
            // 拼接数组,闭包中定义好的的代码在需要执行时,需要self.指定语境
            self.personList += list
            //刷新表格
            self.tableView.reloadData()
        }
    
     
    }
    
    /// 模拟异步，利用闭包回调
    private func loadData(completion:  @escaping ( _ list:[Person])->()) -> () {
        DispatchQueue.global().async {
            
            print("正在努力加载中......")
            Thread.sleep(forTimeInterval: 2)
            var array = [Person]()
            
            for i in 0..<20 {
                
                let p = Person()
                p.name = "zhangsan - \(i)"
                p.phone = "1352" + String(format: "%06d", arc4random_uniform(10000))
                p.title = "BOSS"
                
                array.append(p)
            }
            
            

            //主线程回调
            DispatchQueue.main.async(execute: {

                completion(array)
            })
        }
        
        
    }
    
    @IBAction func newPerson(_ sender: Any) {
        
        performSegue(withIdentifier: "listdetail", sender: nil)
    }
   //#MARK:控制器方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //类型转换用 as
        //Swift中除 String之外,大多数使用 as 需要? / !
        //使用as? / as!直接根据前面的返回值决定
        //Swift中 if let/guard let判空语句 一律使用as?
        let vc = segue.destination as! DetailTableViewController
        
        //设置选中的Person indexpath
        if let indexPath = sender as? IndexPath {
            
            //设置代理
            self.indexPath = indexPath
            vc.delegate = self
            
            //indexPath一定有值
            vc.person = personList[indexPath.row]
          
            
            //设置编辑完成的闭包
            vc.completionCallBack = {
                self.tableView.reloadRows(at: [indexPath], with: .automatic)
            }
        } else {
            //新建个人记录
            //1.vc引用闭包, 2.闭包引用vc OC在xcode会直接提示
            vc.completionCallBack = { [weak vc] in
                //1.获取明细控制器的Person
                guard let p = vc?.person else {
                    return
                }
                
                //2. 插入到数组顶部
                self.personList.insert(p, at: 0)
                
                //3.刷新表格数据
                self.tableView.reloadData()
            }
        }
        
    }
    //采用代理方法完成编辑
    func completionCallBack() {
//        self.tableView.reloadRows(at: [self.indexPath], with: .automatic)
    }
    //#MARK:数据源方法
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        cell.textLabel?.text = personList[indexPath.row].name
        cell.detailTextLabel?.text = personList[indexPath.row].phone
        
        return cell;
    }
    //#MARK:代理方法
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        self.performSegue(withIdentifier: "listdetail", sender: indexPath)
    }
    
    
}
