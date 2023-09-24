//
//  ContentView.swift
//  Memorize
//
//  Created by woo on 2023/09/20.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["🐱", "🐻", "🐼", "🐔"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id:\.self){idx in
                CardView(content: emojis[idx], isFaceUp: true)
            }
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = false

    var body: some View {
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base
                    .foregroundColor(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text(content)
                    .font(.largeTitle)
            }
            else {
                base
                    .fill() // fill is default.
            }
        }
        .onTapGesture (count:1, perform:{
            isFaceUp.toggle()
        })
    }
}

#Preview {
    ContentView()
}
