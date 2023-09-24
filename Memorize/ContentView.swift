//
//  ContentView.swift
//  Memorize
//
//  Created by woo on 2023/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = false

    var body: some View {
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base
                    .foregroundColor(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text("🐱")
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
