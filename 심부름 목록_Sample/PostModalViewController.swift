

import UIKit

class PostModalViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
 {

    @IBOutlet weak var ModalTitle: UITextView!
    @IBOutlet weak var ModalContent: UITextView!
    @IBOutlet weak var ModalImage: UIImageView!
    @IBOutlet weak var ModalPrice: UITextField!
    @IBOutlet weak var ModalLevelPicker: UIPickerView!
    
    //별점 선택 관련
    var pickerDataSource = ["1점", "2점", "3점", "4점", "5점"];
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        let N_Level = pickerDataSource[row]
        UserDefaults.standard.set(N_Level, forKey: "level")
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let str = pickerDataSource[row]
        return NSAttributedString(string: str, attributes: [NSForegroundColorAttributeName:UIColor.white])
    }
    
    //별점 선택 끝
    
    
    @IBAction func SaveModalPost(_ sender: Any) {
        
        let N_Title = ModalTitle.text
        let N_Content = ModalContent.text
        let N_Price = ModalPrice.text
        let N_Confidence = "별점3"//ModalConfidence.text
        //let N_Level = "별점4"//ModalLevel.text
        
        let currentTime = DateFormatter.localizedString(from: NSDate() as Date, dateStyle: .medium, timeStyle: .medium)
    
        let N_Writing_Time = currentTime + " 작성"

        
        //모달에 쓰여진 값들을 유저디폴트에 저장하기
        UserDefaults.standard.set(N_Title, forKey: "title")
        UserDefaults.standard.set(N_Content, forKey: "content")
        UserDefaults.standard.set(N_Price, forKey: "price")
        UserDefaults.standard.set(N_Confidence, forKey: "confidence")
        //UserDefaults.standard.set(N_Level, forKey: "level")
        UserDefaults.standard.set(N_Writing_Time, forKey: "writing_time")//쓰여진 시간 업데이트
        UserDefaults.standard.synchronize()
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ModalLevelPicker.dataSource = self;
        self.ModalLevelPicker.delegate = self;


           }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //유저디폴트가 nil이 아니라면 카테고리 미리보기에 업데이트
        if let Modal_Category = UserDefaults.standard.object(forKey: "category")
        {
            ModalImage.image = UIImage(named: Modal_Category as! String)
        }
        
        
    }

    @IBAction func Cancel(_ sender: Any) {
        //모달디스미스
        self.dismiss(animated: true, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
