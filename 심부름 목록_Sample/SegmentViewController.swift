//
//  SegmentViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 11..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Segment.selectedSegmentIndex = 0


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var Segment: UISegmentedControl!
   
    @IBOutlet weak var SegMainTable: UIView!
    @IBOutlet weak var SegMapView: UIView!
    
    @IBAction func IndexChanged(_ sender: Any) {
        switch Segment.selectedSegmentIndex {
        case 0:
            SegMapView.isHidden = true
            SegMainTable.isHidden = false
        case 1:
            SegMapView.isHidden = false
            SegMainTable.isHidden = true
        default:
            break;
        }
    }
}
