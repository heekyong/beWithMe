//
//  onGoingViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 19..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class onGoingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var on_Title = ["커피명가 케이크 포장좀","아리따움 할인제품 구매대행"]
    var on_Detail = ["레어치즈케이크!!!!!","아리따움 모디네일 원쁠원 젤네일 사다주세요"]
    var on_Category = ["cutlery_black","duty-free_black"]
    var on_Price = ["3,000","2,000"]
    var on_Confidence = ["star1","star4"]
    var on_Level = ["star1","star1"]
    var on_Writing = ["Aug 13, 2017. 11:34:23 AM  작성","Aug 12, 2017. 2:41:33 PM  작성"]
    var on_Interest = ["no","no"]
    
    
    @IBOutlet weak var ongoingtable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //let appDele = UIApplication.shared.delegate as! AppDelegate
        //let myonGoing = appDele.ongoing
        //return myonGoing.count
        return on_Title.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let CellO = tableView.dequeueReusableCell(withIdentifier: "CellO", for: indexPath) as! onGoingTableViewCell
        
        //let appDele = UIApplication.shared.delegate as! AppDelegate
        
        //let myonGoingObject = appDele.ongoing[indexPath.row]
        
        CellO.titleLabel.text = on_Title[indexPath.row]
        CellO.detailLabel.text = on_Detail[indexPath.row]
        CellO.priceLabel.text = on_Price[indexPath.row]
        CellO.cateImage.image = UIImage(named: on_Category[indexPath.row])
        CellO.levelImage.image = UIImage(named: on_Level[indexPath.row])
        CellO.confidenceImage.image = UIImage(named: on_Confidence[indexPath.row])
        
        
        return CellO
        
    }

    override func viewDidAppear(_ animated: Bool) {
        if let tableView = ongoingtable {
            //let dataSource = tableView.dataSource! as UITableViewDataSource
            //dataSource.prepareEntries()
            tableView.reloadData()
        }
    }

}
