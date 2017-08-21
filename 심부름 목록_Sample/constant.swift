//
//  constant.swift
//  심부름 목록_Sample
//
//  Created by cscoi010 on 2017. 8. 18..
//  Copyright © 2017년 연습용. All rights reserved.
//

import Foundation
import Firebase

struct Constants
{
    struct refs
    {
        static let databaseRoot = Database.database().reference()
        static let databaseChats = databaseRoot.child("chats")
    }
}
