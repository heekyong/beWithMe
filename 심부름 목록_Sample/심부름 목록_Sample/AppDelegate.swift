//
//  AppDelegate.swift
//  심부름 목록_Sample
//
//  Created by cscoi008 on 2017. 8. 7..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit
import Firebase

struct Todo {
    var title, detail, category, price, confidence, level, writing, interest : String
}

//삭제해야
struct Interestdo {
    var title, category, price, confidence : String
}

struct history {
    var title, icon, date, pim, price, cate, status, bg : String
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var todos = [
        Todo(title: "안암역 스타벅스 텀블러 구매대행ㅠㅠ", detail: "여친이 꼭 갖고싶다고 했던 스벅 텀블러가 내일 출시하는데요 내일 오전 9시에 급하게 일이 있어서 못갈 것 같네요 안암 사시는 분 좀 도와주세요", category: "take-away-coffee", price: "3,000", confidence: "star3", level: "star3", writing: "Aug 13, 2017. 11:34:23 AM  작성", interest:"no"),
        Todo(title: "한자 필기 급구합니다", detail: "교내 한자시험 필기 구합니다 저번 시간에 못가서요 ㅠ", category: "open-book", price: "10,000", confidence: "star4", level: "star4", writing: "Aug 12, 2017. 2:41:33 PM  작성", interest:"no")
    ]
    
    var myHistory = [
        history(title:"봄학기 권진옥교수님 생활한자 필기",icon:"cate1",date:"2015.08.15",pim:"plus",price:"15000",cate:"해결",status:"완료",bg:"002bg"),
        history(title:"지금 스벅 줄서주실 분",icon:"cate2",date:"2015.07.23",pim:"plus",price:"3500",cate:"해결",status:"완료",bg:"002bg"),
        history(title:"이벤트용 드라이플라워 20000원대 꽃다발 대리구매",icon:"cate3",date:"2015.07.13",pim:"minus",price:"30000",cate:"의뢰",status:"완료",bg:"001bg"),
        history(title:"본죽 전복죽 테이크아웃(정후)",icon:"cate4",date:"2015.07.10",pim:"plus",price:"13000",cate:"해결",status:"완료",bg:"002bg"),
        history(title:"바퀴벌레..잡아주실 분ㅠㅠ",icon:"cate5",date:"2015.06.27",pim:"plus",price:"0",cate:"해결",status:"취소",bg:"003bg"),
        history(title:"대학생 언어교류활동 실태(인터뷰)/남녀무관",icon:"cate6",date:"2015.05.07",pim:"minus",price:"4000",cate:"의뢰",status:"완료",bg:"001bg"),
        history(title:"명순구 교수님 민법학 원론 교재/기출 삽니다!",icon:"cate7",date:"2015.02.02",pim:"plus",price:"30000",cate:"해결",status:"완료",bg:"002bg")
    ]
    
//    var ongoing = [
//        
//        Todo(title: "커피명가 케이크 포장좀", detail: "레어치즈케이크!!!!!", category: "cutlery_black", price: "3,000", confidence: "star1", level: "star1", writing: "Aug 13, 2017. 11:34:23 AM  작성", interest:"no"),
//        Todo(title: "아리따움 할인제품 구매대행", detail: "아리따움 모디네일 원쁠원 젤네일 사다주세요", category: "duty-free_black", price: "2,000", confidence: "star4", level: "star1", writing: "Aug 12, 2017. 2:41:33 PM  작성", interest:"no")
//    
//    ]
    
//    var intrestdos :[Interestdo] = []
    
    var window: UIWindow?
    
    var modal_category = ""
    
    var interest_cell : [Int] = []
    
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
          }

    func applicationDidEnterBackground(_ application: UIApplication) {
         }

    func applicationWillEnterForeground(_ application: UIApplication) {
          }

    func applicationDidBecomeActive(_ application: UIApplication) {
            }

    func applicationWillTerminate(_ application: UIApplication) {
           }


}

