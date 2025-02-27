//
//  ContentView.swift
//  Memorize
//
//  Created by Dylan Pollard on 2/19/25.
//

import SwiftUI


struct ContentView: View {
    let emojis = ["🗿","🍆","🍑","💦"]
    
    var body: some View {
        HStack{
            ForEach(emojis.indices,id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.pink)
        .imageScale(.small)
        .padding()
    }
}


struct CardView: View {
    let content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack(alignment: .center, content: {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 5)
                Text(content).font(.largeTitle)
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
