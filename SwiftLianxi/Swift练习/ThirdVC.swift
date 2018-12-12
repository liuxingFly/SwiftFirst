//
//  ThirdVC.swift
//  Swift练习
//
//  Created by 于良建 on 2018/12/11.
//  Copyright © 2018年 LiuXing. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    @objc var swiftStr = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "Swift页面2"
        print(self.swiftStr)
        
        
        self.initButton()
    }
    
    //MARK: 按钮创建
    func initButton() -> Void {
        let button = UIButton.init(type: UIButton.ButtonType.custom)
        button.frame = CGRect.init(x: 250, y: UIScreen.lj_safeAreaToTop(), width: 100, height: 44)
        button.setTitle("下一页", for: UIControl.State.normal)
        button.backgroundColor = UIColor.blue
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(btnTap(button:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func btnTap(button:UIButton) -> Void {
        
        let firstVC = FirstVC.init()
        firstVC.ocStr = "从swift页面2去OC页面1"
        self.navigationController?.pushViewController(firstVC, animated: true)
    }

}
