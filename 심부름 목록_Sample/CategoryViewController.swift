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
    
    let Image_Name = ["cutlery","take-away-coffee","go-to-location","pointer","question","cardiogram","noun_1016645_cc","noun_55681_cc","teacher-reading","dog-food","car","graduation-idea-bulb-and-cap","duty-free","british-shorthair-cat","departures","handshake","pawprint","gift","paper-plane (1)","dog"]
    
    //어디에 선택되어 있는 지 변수설정
    var selectedIndex = Int ()
    
    
    //아이템 몇 개 넣을거니
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return Category_Description.count
    }
    
    // 4. Collection View에서 사용할 부가적인 메소드 정의
    // 4.1. Ceollection View에서 각 Cell의 디자인을 정의할 메소드를 정의
    // 이 Method는 UICollectionViewDelegateFlowLayout에 정의되어 있으므로 이 놈을 꼭 상속해야 한다.
    //func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        // 이 샘플에서는 Cell의 크기를 105x105로 지정한다. 
        //return CGSizeMake(105, 105)
    //}
    
    
    //각각의 아이템에 뭐 넣을거니 - 셀 리턴
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = Category_Collection.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath) as! CategoryCollectionViewCell
        
        //이미지 삽입 - 이미지 크기는 안정해줌 정해야함.
        cell.Collection_Image.image = UIImage(named:Image_Name[indexPath.item])
        //배경화면 투명
        //cell.backgroundColor?.cgColor = Default
        
        //cell이 선택된 경우
        if selectedIndex == indexPath.row
        {
            //테두리 활성화
            let grey = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1.0)
            cell.layer.borderWidth = 1.5
            cell.layer.borderColor = grey.cgColor
            
            
            //라벨 활성화는 어케하지...
            cell.Collection_Label.text = Category_Description[indexPath.item]
        }
        else
        {
            //라벨 활성화 사라짐
            cell.Collection_Label.text = ""
            //테두리 활성화 사라짐
            cell.layer.borderWidth = 0
            //cell.layer.borderWidth.hidden = true
        }
        
        //색깔설정
        //cell.backgroundColor = self.randomColor()
        //cell.Collection_Label.text = Category_Description[indexPath.item]
        //cell.imageView.sd_setImageWithURL(NSURL(string: thumbImg1[indexPath.row] ))

        
        return cell
    }
    
    //콜렉션 셀 선택됨에 따라 라벨 나타나고, 테두리 구현
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
        //셀 선택될 때 라벨 나타내기
        //let cell = Category_Collection.cellForItem(at: indexPath) as! CategoryCollectionViewCell
        //let Category_Label = Category_Description[indexPath.item]
        
        //cell.Collection_Label.text = Category_Label
        
        //myLabel.hidden = true
        
        selectedIndex = indexPath.item
        
        self.Category_Collection.reloadData()
        
        //collectionView.allowsMultipleSelection = false
        
        print("You selected cell #\(indexPath.item)!")
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
    }
    
    
    
    //프로토콜 오류로 임의 추가
    let identifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //프로토콜 오류로 임의 추가
        Category_Collection.dataSource = self
        Category_Collection.delegate = self

    }

    
    @IBAction func Cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Save(_ sender: Any) {
        
        //이미지 이름을 유저디폴트 업데이트 하는 코드 넣어야함
        
        self.dismiss(animated: true, completion: nil)
    }
  
    

    
}
