//
//  DetilaView.swift
//  Read_ME
//
//  Created by Jooeun Kim on 2022/05/12.
//

import SwiftUI

struct DetilaView: View {
    let book : Book
    
    var body: some View {
        VStack {
            Book.Image(title: book.title)
                Spacer()
        }
    }
       
}

struct DetilaView_Previews: PreviewProvider {
    static var previews: some View {
        DetilaView(book: .init())
    }
}
