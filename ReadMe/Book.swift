//
//  Book.swift
//  ReadMe
//
//  Created by Shubham Naik on 2/1/21.
//

struct Book: Hashable {
    let title: String
    let author: String
    
    init(title: String = "Title", author: String = "Author") {
        self.title = title
        self.author = author
    }
}
