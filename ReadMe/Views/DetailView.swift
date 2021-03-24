//
//  DetailView.swift
//  ReadMe
//
//  Created by Shubham Naik on 2/1/21.
//
import class PhotosUI.PHPickerViewController
import SwiftUI

struct DetailView: View {
    var book: Book
    @Binding var image: UIImage?
    @State var showImagePicker = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Book.Details(book: book)
            VStack {
                Book.Image(uiImage: image, title: book.title)
                Button("Update Image") {
                    showImagePicker = true
                }
            }
            Spacer()
        }.padding()
        .sheet(isPresented: $showImagePicker) {
            PHPickerViewController.View(image: $image)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: .init(), image: .constant(nil))
            .previewdInAllColorSchemes
    }
}
