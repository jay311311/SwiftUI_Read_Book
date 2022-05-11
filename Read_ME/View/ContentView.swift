//
//  ContentView.swift
//  Read_ME
//
//  Created by Jooeun Kim on 2022/05/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Book.Image(title: Book().title)
            Text("Title")
                .font(.title2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


