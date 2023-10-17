//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 10/10/2023.
//

import SwiftUI

struct ContentView: View {

    var emojis = ["😂", "🥸", "🤪", "😠", "😂", "🥸", "🤪", "😠", "😂", "🥸", "🤪", "😠"]

    @State var cardNumber = 2
    var body: some View {
        VStack {
            ScrollView{
                cards
            }
            HStack {
                cardAdder
                Spacer()
                cardRemover
            }
        }
        .padding()
    }

    var cards : some View {
        LazyVGrid(columns: 
        [GridItem(.adaptive(minimum: 120))]){
            ForEach(0..<cardNumber, id: \.self){
                index in CardView(content: emojis[index])
            }
        }
        .foregroundColor(.blue)
    }

    func adjustCardNumber(by_offset: Int, symbol: String) -> some View {
        Button(symbol){
            if(cardNumber + by_offset <= emojis.count && cardNumber + by_offset >= 2){
                cardNumber += by_offset
            }
        }
        .font(.largeTitle)
        .frame(width: 75)
        .border(.blue, width: 2)
    }

    var cardAdder : some View {
        adjustCardNumber(by_offset: 2, symbol: "+")
    }
    
    var cardRemover  : some View {
        adjustCardNumber(by_offset: -2, symbol: "-")
    }
}

#Preview {
    ContentView()
}
