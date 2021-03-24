//
//  Library.swift
//  ReadMe
//
//  Created by Shubham Naik on 2/1/21.
//

import class UIKit.UIImage

final class Library {
    var sortedBooks: [Book] { booksCache }
    
    private var booksCache: [Book] = [
        Book.init(title: "Henlo", author: "Shubham Naik"),
        Book.init(title: "Matcher", author: "Shubham Naik"),
    ]
    
    var uiImages: [Book: UIImage] = [:]
}
