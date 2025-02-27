//
//  ContentView.swift
//  Memorize
//
//  Created by Dylan Pollard on 2/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView(isFaceUp: true)
            CardView()
        }
        .foregroundColor(.pink)
        .imageScale(.small)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = false
    
    var body: some View {
        ZStack(alignment: .center, content: {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 5)
                Text("💝").font(.largeTitle)
            } else {
                base.fill()
            }
        })
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

























#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
