

import UIKit

class PostModalViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
 {

    @IBOutlet weak var ModalTitle: UITextView!
    @IBOutlet weak var ModalContent: UITextView!
    @IBOutlet weak var ModalImage: UIImageView!
    @IBOutlet weak var ModalPrice: UITextField!
    @IBOutlet weak var ModalTimePicker: UIPickerView!
    @IBOutlet weak var ModalRatingControl: RatingControl!
    
    
    
    //시간 선택 관련
    var pickerDataSource = ["0분", "10분", "20분", "30분", "40분", "50분"];
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        //let N_Level = pickerDataSource[row]

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
        let N_Confidence = "star3"//ModalConfidence.text
        let N_Level =  "star\(String(ModalRatingControl.rating))"//ModalLevel.text
        
        let currentTime = DateFormatter.localizedString(from: NSDate() as Date, dateStyle: .medium, timeStyle: .medium)
    
        let N_Writing_Time = currentTime + " 작성"
        
        
        //모달에 쓰여진 값들을 delegate에 저장하기
        let appDele = UIApplication.shared.delegate as! AppDelegate
        let newTodo = Todo(title: N_Title!, detail: N_Content!, category: appDele.modal_category, price: N_Price!, confidence: N_Confidence, level: N_Level, writing: N_Writing_Time)
        appDele.todos.insert(newTodo, at:0)
        
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ModalTimePicker.dataSource = self;
        self.ModalTimePicker.delegate = self;


           }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //유저디폴트가 nil이 아니라면 카테고리 미리보기에 업데이트
        let appDele = UIApplication.shared.delegate as! AppDelegate
        ModalImage.image = UIImage(named: appDele.modal_category)
        
        
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
