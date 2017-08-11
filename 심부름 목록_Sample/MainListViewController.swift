//
//  MainListViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi008 on 2017. 8. 7..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class MainListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    var Title_Data = ["안암역 스타벅스 텀블러 구매대행 가능하신 분 ㅠㅠ","한자 필기 급구합니다"] //data = title
    var Detail_Data = ["여친이 꼭 갖고싶다고 했던 스벅 텀블러가 내일 출시하는데요 내일 오전 9시에 급하게 일이 있어서 못갈 것 같네요 안암 사시는 분 좀 도와주세요","교내 한자시험 필기 구합니다 저번 시간에 못가서요 ㅠ"] //임의 추가
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Title_Data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)  as! MainListTableViewCell
        
        Cell.TitleLabel.text = Title_Data[indexPath.row]
        Cell.DetailLabel.text = Detail_Data[indexPath.row] //적용 안되고 있음
        return Cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        UserDefaults.standard.set(indexPath.row, forKey: "Order")
        //memo와 연결
        
        performSegue(withIdentifier: "ToPost", sender: self)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

                
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//table view end

    
        
    
//action end

    

}
