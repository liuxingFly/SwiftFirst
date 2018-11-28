//
//  ViewController.swift
//  Swift练习
//
//  Created by 于良建 on 2018/10/18.
//  Copyright © 2018年 LiuXing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let btn = UIButton.init(type: UIButton.ButtonType.custom)
        btn.frame = CGRect.init(x: 50, y: 100, width: 100, height: 100)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(nihao(button:)), for: UIControl.Event.touchUpInside)
        
        self.view.addSubview(btn);
        
        let sss = "ssss";
        
        print("niha")
        
        print("你好")
        
        print("还没很认真呢")
        
    }
    
    @objc func nihao(button:UIButton) -> Void {
        
        print("nihao")
        let firstVC = FirstVC.init();
        
        self.navigationController?.pushViewController(firstVC, animated: true)
        
    }


}

