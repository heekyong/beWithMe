//
//  History_ExpendViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 19..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class History_ExpendViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var HistoryExpendTableView: UITableView!
    
    
   

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
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        let myExpend = appDele.myHistory.filter { $0.pim == "minus" }
        return myExpend.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CellE = tableView.dequeueReusableCell(withIdentifier: "CellE", for: indexPath) as! HistoryTableViewCell
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        
        var myExpend = appDele.myHistory.filter { $0.pim == "minus" }

        let historyExpendObject = myExpend[indexPath.row]//myHistory[indexPath.row]
        
        
        //CellA.bgImage.image = UIImage(named: historyAllObject.bg)
        CellE.priceImage.image = UIImage(named: historyExpendObject.pim)
        
        CellE.priceLabel.text = historyExpendObject.price
        CellE.dateLabel.text = historyExpendObject.date
        
        CellE.titleLabel.text = historyExpendObject.title
        CellE.iconImage.image = UIImage(named: historyExpendObject.icon)
        
        CellE.cateLabel.text = historyExpendObject.cate
        CellE.statusLabel.text = historyExpendObject.status
        
        
        return CellE
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let tableView = HistoryExpendTableView {
            //let dataSource = tableView.dataSource! as UITableViewDataSource
            //dataSource.prepareEntries()
            tableView.reloadData()
        }
    }

   
}
