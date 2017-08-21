//
//  History_MViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi010 on 2017. 8. 17..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit



class History_IncomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var HistorynIcomeTableView: UITableView!

    
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
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        let myIncome = appDele.myHistory.filter { $0.pim == "plus" }
        return myIncome.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let CellC = tableView.dequeueReusableCell(withIdentifier: "CellC", for: indexPath) as! HistoryTableViewCell
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        
        var myIncome = appDele.myHistory.filter { $0.pim == "plus" }
        
        let historyIncomeObject = myIncome[indexPath.row]
        //myHistory[indexPath.row]
        
        
        //CellA.bgImage.image = UIImage(named: historyAllObject.bg)
        CellC.priceImage.image = UIImage(named: historyIncomeObject.pim)
        
        CellC.priceLabel.text = historyIncomeObject.price
        CellC.dateLabel.text = historyIncomeObject.date
        
        CellC.titleLabel.text = historyIncomeObject.title
        CellC.iconImage.image = UIImage(named: historyIncomeObject.icon)
        
        CellC.cateLabel.text = historyIncomeObject.cate
        CellC.statusLabel.text = historyIncomeObject.status
        
        
        return CellC

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let tableView = HistorynIcomeTableView {
            //let dataSource = tableView.dataSource! as UITableViewDataSource
            //dataSource.prepareEntries()
            tableView.reloadData()
        }
    }
}
