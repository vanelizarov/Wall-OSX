//
//  Post.swift
//  Wall
//
//  Created by vanelizarov on 07/12/15.
//  Copyright © 2015 vanelizarov. All rights reserved.
//

import Cocoa

class Post: NSObject {
    
    var id : Int64!
    var title : String!
    var text : String!
    var date : String!
    
    init(id: Int64, title: String, text: String, date: String) {
        
        self.id = id
        self.title = title
        self.text = text
        self.date = date
        
    }

}
