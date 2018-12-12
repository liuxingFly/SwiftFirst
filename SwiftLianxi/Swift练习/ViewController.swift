//
//  ViewController.swift
//  Swift练习
//
//  Created by 于良建 on 2018/10/18.
//  Copyright © 2018年 LiuXing. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @objc var ocStr = ""
    var dataAry = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "Swift页面1"
        
        for i in 0..<30 {
            dataAry.append("第\(i)个按钮")
        }
        
        self.initTableView()
        
        self.ceshi()
        
        
    }
    
    func ceshi() -> Void {
        
        print("\(ocStr)")
    }
    
    //MARK: tableView创建
    func initTableView() -> Void {
        let tableView = UITableView.init(frame: self.view.bounds, style: UITableView.Style.plain)
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        tableView.register(FirstCell.self, forCellReuseIdentifier: "FirstCellID")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 50
        self.view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataAry.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
//        cell.textLabel?.text = dataAry[indexPath.row]
        let cell:FirstCell = tableView.dequeueReusableCell(withIdentifier: "FirstCellID", for: indexPath) as! FirstCell
        cell.label.text = dataAry[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let string = tableView.cellForRow(at: indexPath)?.textLabel?.text
        print(string ?? "")
        
        let firstVC = FirstVC.init()
        firstVC.ocStr = "从Swift页面1到OC页面1"
        firstVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(firstVC, animated: true)
        
    }

}

