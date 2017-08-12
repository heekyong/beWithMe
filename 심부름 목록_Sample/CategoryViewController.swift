//
//  CategoryViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 12..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    @IBOutlet weak var Category_Collection: UICollectionView!
    
    
    let Category_Description = ["음식, 테이크아웃","커피","길찾기","손가락","질문","심리","시간제한","병원","튜터링","사료","카풀","논문","면세","반려동물","비행기","악수","증거","선물","종이비행기","강아지"]
    
    
    //아이템 몇 개 넣을거니
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return Category_Description.count
    }
    
    //각각의 아이템에 뭐 넣을거니 - 셀 리턴
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = Category_Collection.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath) as! CategoryCollectionViewCell
        
        //색깔설정
        let grey = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1.0)
        cell.layer.borderWidth = 1.0
        cell.layer.borderColor = grey.cgColor
        //cell.backgroundColor = self.randomColor()
        //cell.Collection_Label.text = Category_Description[indexPath.item]
        //cell.imageView.sd_setImageWithURL(NSURL(string: thumbImg1[indexPath.row] ))

        
        return cell
    }
    
    
    
    // 콜렉션 셀 선택됨에 따라 아래 라벨 나타나게 하고 싶음
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let Category_Label = Category_Description[indexPath.item]
        //self.Collection_Label.text = Category_Label
        //myLabel.hidden = true
            
    }
    
    //프로토콜 오류로 임의 추가
    let identifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //프로토콜 오류로 임의 추가
        Category_Collection.dataSource = self

    }

    @IBAction func Cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Save(_ sender: Any) {
        
        //이미지 아이디 업데이트 하는 코드 넣어야함
        
        self.dismiss(animated: true, completion: nil)

    }

    
}
