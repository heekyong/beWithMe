
import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var TitleTextView: UITextView!
    @IBOutlet weak var PostTextView: UITextView!
    @IBOutlet weak var CategoryImageView: UIImageView!
    @IBOutlet weak var PriceTextView: UILabel!
    @IBOutlet weak var LevelStarImage: UIImageView!
    @IBOutlet weak var ConfidenceStarImage: UIImageView!
    
    
    var Title_Data = ["안암역 스타벅스 텀블러 구매대행 가능하신 분 ㅠㅠ","한자 필기 급구합니다"] //임의 추가
    var Detail_Data = ["여친이 꼭 갖고싶다고 했던 스벅 텀블러가 내일 출시하는데요 내일 오전 9시에 급하게 일이 있어서 못갈 것 같네요 안암 사시는 분 좀 도와주세요","교내 한자시험 필기 구합니다 저번 시간에 못가서요 ㅠ"]
    var Category_Data = ["take-away-coffee","open-book"]
    var Price_Data = ["3,000","10,000"]
    var Confidence_Data = ["별점3","별점4"] //작동 안함
    var Level_Data = ["별점3","별점4"] //작동 안함

    //data 는 디테일

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
        
        if let Modal_Price = UserDefaults.standard.object(forKey: "price") {
            Price_Data.append(Modal_Price as! String)
        }
        
        if let Modal_Confidence = UserDefaults.standard.object(forKey: "confidence") {
            Confidence_Data.append(Modal_Confidence as! String)
        }
        
        if let Modal_Level = UserDefaults.standard.object(forKey: "level") {
            Level_Data.append(Modal_Level as! String)
        }

        //유저디폴트의 값 삭제하기
        UserDefaults.standard.removeObject(forKey: "title")
        UserDefaults.standard.removeObject(forKey: "content")
        UserDefaults.standard.removeObject(forKey: "category")
        UserDefaults.standard.removeObject(forKey: "price")
        UserDefaults.standard.removeObject(forKey: "confidence")
        UserDefaults.standard.removeObject(forKey: "level")
        
        let Order = UserDefaults.standard.object(forKey: "Order") as! Int
        //main의 order와 연결
        TitleTextView.text = Title_Data[Order]
        PostTextView.text = Detail_Data[Order]
        CategoryImageView.image = UIImage(named: Category_Data[Order])
        PriceTextView.text = Price_Data[Order]
        
        LevelStarImage.image = UIImage(named: Confidence_Data[Order])
        ConfidenceStarImage.image = UIImage(named: Level_Data[Order])

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let Order = UserDefaults.standard.object(forKey: "Order") as! Int
//        //main의 order와 연결
//        TitleTextView.text = Title_Data[Order]
//        PostTextView.text = Detail_Data[Order]
//        CategoryImageView.image = UIImage(named: Category_Data[Order])
//        PriceTextView.text = Price_Data[Order]
//
//        LevelStarImage.image = UIImage(named: Confidence_Data[Order])
//        ConfidenceStarImage.image = UIImage(named: Level_Data[Order])
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        UserDefaults.standard.removeObject(forKey: "Order")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Cancel(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)

    }



}
