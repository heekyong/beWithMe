//
//  CheckBox.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 16..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    //잠깐 추가
    weak var myTable: UITableView?
    weak var myCell:  UITableViewCell?

    //하트버튼을 위한 클래스
        // Images
    let checkedImage = UIImage(named: "heart _FULL")//! as UIImage
    let uncheckedImage = UIImage(named: "heart _FILL")//! as UIImage
        
        // Bool propert
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImage, for: UIControlState.normal)
                
            } else {
                self.setImage(uncheckedImage, for: UIControlState.normal)
            }
        }
    }
        
    override func awakeFromNib() {
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControlEvents.touchUpInside)
        self.isChecked = false
    }
        
    func buttonClicked(sender: UIButton) {
        if sender == self {
            if isChecked == true {
                isChecked = !isChecked
            
            }
            else {
                isChecked = !isChecked
            }
        }
    }
}
