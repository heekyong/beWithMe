//
//  History_MViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi010 on 2017. 8. 17..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit



class History_MViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    
    var myHistory = [["title":"봄학기 권진옥교수님 생활한자 필기","icon":"cate1","date":"2015.08.15","pim":"plus","price":"15000","cate":"해결","status":"완료","bg":"002bg"],["title":"지금 스벅 줄서주실 분","icon":"cate2","date":"2015.07.23","pim":"plus","price":"3500","cate":"해결","status":"완료","bg":"002bg"],["title":"이벤트용 드라이플라워 20000원대 꽃다발 대리구매","icon":"cate3","date":"2015.07.13","pim":"minus","price":"30000","cate":"의뢰","status":"완료","bg":"001bg"],["title":"본죽 전복죽 테이크아웃(정후)","icon":"cate4","date":"2015.07.10","pim":"plus","price":"13000","cate":"해결","status":"완료","bg":"002bg"],["title":"바퀴벌레..잡아주실 분ㅠㅠ","icon":"cate5","date":"2015.06.27","pim":"plus","price":"0","cate":"해결","status":"취소","bg":"003bg"],["title":"대학생 언어교류활동 실태(인터뷰)/남녀무관, 교양관","icon":"cate6","date":"2015.05.07","pim":"minus","price":"4000","cate":"의뢰","status":"완료","bg":"001bg"],["title":"명순구 교수님 민법학 원론 교재/기출 삽니다!","icon":"cate7","date":"2015.02.02","pim":"plus","price":"30000","cate":"해결","status":"완료","bg":"002bg"]]
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myHistory.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellM", for: indexPath) as! HistoryTableViewCell
        
        let historyObject = myHistory[indexPath.row]
        
        
        cell.bgImage.image = UIImage(named: historyObject["bg"]!)
        cell.iconImage.image = UIImage(named: historyObject["icon"]!)
        cell.cateLabel.text = historyObject["cate"]
        cell.dateLabel.text = historyObject["date"]
        cell.priceImage.image = UIImage(named: historyObject["pim"]!)
        cell.priceLabel.text = historyObject["price"]
        cell.statusLabel.text = historyObject["status"]
        cell.titleLabel.text = historyObject["title"]
        
        return cell
        
    }
}
