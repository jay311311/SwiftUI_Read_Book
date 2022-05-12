//
//  ContentView.swift
//  Read_ME
//
//  Created by Jooeun Kim on 2022/05/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 각요소를 구별할 identifier 지정 (1. key path, 2. identifier 프로토콜)
        NavigationView{
            List(Library().booksCache, id: \.title) { book in
                BookRow(book:book)
            }
            // NavigationView{안쪽에 네비 타이틀 작성}
            .navigationTitle("My Library")
        }
    }
}

struct BookRow: View {
    
    let book : Book
    
    var body: some View {
        NavigationLink(destination: DetilaView(book: book), label: {
            HStack{
                Book.Image(title: book.title)
                VStack(alignment: .leading){
                    Text(book.title)
                        .font(.title2)
                    Text(book.author)
                        .font(.title3)
                        .foregroundColor(.secondary)
                }.lineLimit(1)
                
            }
            .padding(.vertical)
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



