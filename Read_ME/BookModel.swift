//
//  BookModel.swift
//  Read_ME
//
//  Created by Jooeun Kim on 2022/05/11.
//

import Foundation

struct Book {
    var title: String
    var author :String
    init(title:String = "Title", author:String = "Author"){
        self.title = title
        self.author =  author
    }
}
