//
//  AppDelegate.swift
//  심부름 목록_Sample
//
//  Created by cscoi008 on 2017. 8. 7..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit


struct Todo {
    var title, detail, category, price, confidence, level, writing : String
}

struct Interestdo {
    var title, category, price, confidence : String
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var todos = [
        Todo(title: "안암역 스타벅스 텀블러 구매대행ㅠㅠ", detail: "여친이 꼭 갖고싶다고 했던 스벅 텀블러가 내일 출시하는데요 내일 오전 9시에 급하게 일이 있어서 못갈 것 같네요 안암 사시는 분 좀 도와주세요", category: "take-away-coffee", price: "3,000", confidence: "star3", level: "star3", writing: "Aug 13, 2017. 11:34:23 AM  작성"),
        Todo(title: "한자 필기 급구합니다", detail: "교내 한자시험 필기 구합니다 저번 시간에 못가서요 ㅠ", category: "open-book", price: "10,000", confidence: "star4", level: "star4", writing: "Aug 12, 2017. 2:41:33 PM  작성")
    ]
    
    var intrestdos :[Interestdo] = []
    
    var window: UIWindow?
    
    var modal_category = ""
    
    var interest_cell : [Int] = []
    
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
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

