//
//  SegmentHistoryViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 14..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class SegmentHistoryViewController: UIViewController {

    @IBOutlet weak var myMoney: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    
    @IBAction func myAccount(_ sender: Any) {
        
        myMoney.text = "0"
        let alert = UIAlertController(title: "Alert", message: "내 계좌로 송금되었습니다.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
