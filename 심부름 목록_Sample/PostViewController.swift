
import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var TitleTextView: UITextView!
    @IBOutlet weak var PostTextView: UITextView!
    
    var Title_Data = ["안암역 스타벅스 텀블러 구매대행 가능하신 분 ㅠㅠ","한자 필기 급구합니다"] //임의 추가
    var Detail_Data = ["여친이 꼭 갖고싶다고 했던 스벅 텀블러가 내일 출시하는데요 내일 오전 9시에 급하게 일이 있어서 못갈 것 같네요 안암 사시는 분 좀 도와주세요","교내 한자시험 필기 구합니다 저번 시간에 못가서요 ㅠ"]
    //data 는 디테일

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Order = UserDefaults.standard.object(forKey: "Order") as! Int
        //main의 order와 연결
        TitleTextView.text = Title_Data[Order]
        PostTextView.text = Detail_Data[Order]
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Cancel(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)

    }



}
