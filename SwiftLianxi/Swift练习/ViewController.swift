//
//  ViewController.swift
//  Swift练习
//
//  Created by 于良建 on 2018/10/18.
//  Copyright © 2018年 LiuXing. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dataAry = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "首页"
        self.ceshi()
        
        self.initButton()
        
        
        for i in 0..<30 {
            dataAry.append("第\(i)个按钮")
        }
        
        self.initTableView()
        
    }
    
    func ceshi() -> Void {
        
        
    }
    
    //MARK: 按钮创建
    func initButton() -> Void {
        let button = UIButton.init(type: UIButton.ButtonType.custom)
        button.frame = CGRect.init(x: 50, y: 100, width: 100, height: 50)
        button.setTitle("下一页", for: UIControl.State.normal)
        button.backgroundColor = UIColor.blue
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(btnTap(button:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func btnTap(button:UIButton) -> Void {
        print("nihao")
        let firstVC = FirstVC.init();
        self.navigationController?.pushViewController(firstVC, animated: true)
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
        
    }

}

