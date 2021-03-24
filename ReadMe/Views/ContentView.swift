//
//  ContentView.swift
//  ReadMe
//
//  Created by Shubham Naik on 2/1/21.
//

import SwiftUI

struct ContentView: View {
    @State var library = Library()

    
    var body: some View {
        
        NavigationView {
            List(library.sortedBooks, id: \.self) { book in
                let _ = print("hi!", $library.uiImages[book])

                BookRow(
                    book: book,
                    image: $library.uiImages[book]
                )
                    .lineLimit(1)
            }
        }.navigationTitle("My Library")
    
    }
}

struct BookRow: View {
    let book: Book
    @Binding var image: UIImage?
    
    var body: some View {
        NavigationLink(destination: DetailView(book: book, image: $image)) {
            HStack {
                Book.Image(uiImage: image, title: book.title)
                Book.Details(book: book)
            }.padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewdInAllColorSchemes
    }
}

