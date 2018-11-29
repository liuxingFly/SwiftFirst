//
//  FirstCell.swift
//  Swift练习
//
//  Created by 于良建 on 2018/11/29.
//  Copyright © 2018年 LiuXing. All rights reserved.
//

import UIKit

class FirstCell: UITableViewCell {
    
    var label:UILabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpUI() -> Void {
        
        label = UILabel.init(frame: CGRect.init(x: 50, y: 10, width: 100, height: 30))
        label.backgroundColor = UIColor.yellow
        label.textColor = UIColor.red
        self.addSubview(label)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
