//
//  BookView.swift
//  Read_ME
//
//  Created by Jooeun Kim on 2022/05/11.
//

import SwiftUI

extension Book{
    struct Image: View {
        var title:String
        
        var body: some View {
            
            let symbol =
            SwiftUI.Image(title:title)
            ?? .init(systemName:"book")
            
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary)
        }
    }
}

extension Image{
    init?(title:String){
        guard let letter = title.first,
    //조건부 바인딩에서 symbolName처럼 optional 이 아닌 경우 "case"를 추가하면 에러 해결
      case let symbolName = "\(letter.lowercased()).square",
      UIImage(systemName: symbolName) != nil else { return nil }
        
        self.init(systemName:symbolName)
    }
}

struct Book_Preview: PreviewProvider{
    static var previews: some View{
        VStack {
            Book.Image(title: Book().title)
            Book.Image(title: "")
            Book.Image(title: "💜")
        }
    }
}

