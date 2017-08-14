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
    var Category_Data = ["take-away-coffee","open-book"]
    var Confidence_Data = ["별점3","별점4"] //작동 안함
    var Level_Data = ["별점3","별점4"] //작동 안함
    
    @IBOutlet weak var MainTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Title_Data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)  as! MainListTableViewCell
        
        Cell.TitleLabel.text = Title_Data[indexPath.row]
        Cell.DetailLabel.text = Detail_Data[indexPath.row]
        Cell.CategoryImage.image = UIImage(named: Category_Data[indexPath.row])
        Cell.ConfidenceStarImage.image = UIImage(named:"별점3")
            //별점추가도 넣어야함
             //UIImage(named: Confidence_Data[indexPath.row]) //작동안함
        Cell.LevelStarImage.image =
            UIImage(named:"별점4")
            //UIImage(named: Level_Data[indexPath.row]) //작동안함
        return Cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        UserDefaults.standard.set(indexPath.row, forKey: "Order")
        //memo와 연결
        
        //TOPOST 말고 detailview
        //performSegue(withIdentifier: "ToDetail", sender: self)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    //뷰 컨트롤러가 생성될 때 한 번만 실행 따라서 초기화할 때 사용
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //뷰 컨트롤러가 화면에 나타나기 직전에 실행
    override func viewWillAppear(_ animated: Bool) {
        
        //유저디폴트가 nil이 아니라면 배열에 업데이트
        if let Modal_Title = UserDefaults.standard.object(forKey: "title") {
            Title_Data.append(Modal_Title as! String)
        }
        
        if let Modal_Content = UserDefaults.standard.object(forKey: "content") {
            Detail_Data.append(Modal_Content as! String)
        }
        
        if let Modal_Category = UserDefaults.standard.object(forKey: "category") {
            Category_Data.append(Modal_Category as! String)
        }
        
        //유저디폴트의 값 삭제하기
        UserDefaults.standard.removeObject(forKey: "title")
        UserDefaults.standard.removeObject(forKey: "content")
        UserDefaults.standard.removeObject(forKey: "category")
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let tableView = MainTableView {
            //let dataSource = tableView.dataSource! as UITableViewDataSource
            //dataSource.prepareEntries()
            tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//table view end

    
        
    
//action end

    

}
