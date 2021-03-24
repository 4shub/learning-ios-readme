//
//  BookViews.swift
//  ReadMe
//
//  Created by Shubham Naik on 2/1/21.
//

import SwiftUI

extension Book {
    struct Image: View {
        let uiImage: UIImage?
        let title: String
        var size: CGFloat?
        
        var body: some View {
            if let image = uiImage.map(SwiftUI.Image.init) {
                image.resizable()
                    .scaledToFill()
                    .frame(width: size, height: size)
            } else {
                let symbol = SwiftUI.Image(title: title) ?? SwiftUI.Image(systemName: "book")
                
                symbol
                    .resizable()
                    .scaledToFit()
                    .frame(width: size, height: size)
                    .font(Font.title.weight(.light))
                    .foregroundColor(.secondary)
            }

        }
    }
    
    struct Details: View {
        let book: Book
        
        var body: some View {
            VStack(alignment:.leading) {
                Text(book.title)
                    .font(.title2)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.leading)
                Text(book.author)
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

extension Book.Image {
    init(title: String) {
        self.init(
            uiImage: nil,
            title: title
        )
    }
}

extension Image {
    init?(title: String) {
        guard let character = title.first,
              case let symbolName = "\(character.lowercased()).square",
              UIImage(systemName: symbolName) != nil else {
            return nil
        }
        
        self.init(systemName: symbolName)
    }
}


extension View {
    var previewdInAllColorSchemes: some View {
        ForEach(ColorScheme.allCases, id: \.self, content: preferredColorScheme)
    }
}
