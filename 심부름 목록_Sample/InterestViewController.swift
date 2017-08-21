//
//  InterestViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 19..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class InterestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var in_Title = ["커피명가 케이크 포장좀","아리따움 할인제품 구매대행"]
    var in_Detail = ["레어치즈케이크!!!!!","아리따움 모디네일 원쁠원 젤네일 사다주세요"]
    var in_Category = ["cutlery_black","duty-free_black"]
    var in_Price = ["3,000","2,000"]
    var in_Confidence = ["star1","star4"]
    var in_Level = ["star1","star1"]
    var in_Writing = ["Aug 13, 2017. 11:34:23 AM  작성","Aug 12, 2017. 2:41:33 PM  작성"]
    var in_Interest = ["no","no"]
    
    @IBOutlet weak var interesttable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        let appDele = UIApplication.shared.delegate as! AppDelegate
//        let myonGoing = appDele.todos.filter { $0.interest == "yes" }
//        return myonGoing.count
          return in_Title.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let CellI = tableView.dequeueReusableCell(withIdentifier: "CellI", for: indexPath) as! InterestTableViewCell
        
//        let appDele = UIApplication.shared.delegate as! AppDelegate
//        
//        var myonGoing = appDele.todos.filter { $0.interest == "yes" }
//        
//        let myInterestObject = myonGoing[indexPath.row]
        
//        CellI.titleLabel.text = myInterestObject.title
//        CellI.priceLabel.text = myInterestObject.price
//        CellI.cateImage.image = UIImage(named: myInterestObject.category)
//        CellI.InterestNum.text = "1"//myonGoingObject.title
        
        CellI.titleLabel.text = in_Title[indexPath.row]
        CellI.priceLabel.text = in_Price[indexPath.row]
        CellI.cateImage.image = UIImage(named: in_Category[indexPath.row])
        CellI.InterestNum.text = "1"//myonGoingObject.title
        
        return CellI
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let tableView = interesttable {
            //let dataSource = tableView.dataSource! as UITableViewDataSource
            //dataSource.prepareEntries()
            tableView.reloadData()
        }
    }


}
