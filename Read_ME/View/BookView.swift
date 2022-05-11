//
//  BookView.swift
//  Read_ME
//
//  Created by Jooeun Kim on 2022/05/11.
//

import SwiftUI

extension Book{
    struct Image: View {
        var body: some View {
            SwiftUI.Image(systemName: "book")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary)
        }
    }
}

struct Book_Preview: PreviewProvider{
    static var previews: some View{
        Book.Image()
    }
}

