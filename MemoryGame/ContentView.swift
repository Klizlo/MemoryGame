//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 10/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: MemoGameViewModel

    var body: some View {
        VStack {
            Text("Memo")
                .font(.largeTitle)
            ScrollView{
                cards
            }
//            HStack {
//                cardAdder
//                Spacer()
//                cardRemover
//            }
            themeButtons
        }
        .padding()
        .foregroundColor(viewModel.themeColor)
    }

    var cards : some View {
        LazyVGrid(columns:
                    [GridItem(.adaptive(minimum: 85), spacing: 0)], spacing: 0){
            ForEach(viewModel.cards){
                card in CardView(card: card)
                    .aspectRatio(2/3, contentMode: .fit)
                    .padding(4)
                    .onTapGesture {
                        viewModel.choose(card)
                    }

            }
            
        }
    }

//    func adjustCardNumber(by_offset: Int, symbol: String) -> some View {
//        Button(symbol){
//            if(cardNumber + by_offset <= emojis.count && cardNumber + by_offset >= 2){
//                cardNumber += by_offset
//            }
//        }
//        .font(.largeTitle)
//        .frame(width: 75)
//        .border(.blue, width: 2)
//    }

//    var cardAdder : some View {
//        adjustCardNumber(by_offset: 2, symbol: "+")
//    }
//    
//    var cardRemover  : some View {
//        adjustCardNumber(by_offset: -2, symbol: "-")
//    }
    
    var themeButtons : some View {
        HStack{
            ThemeButton(icon: "smiley.fill", text: "Motyw 1", color: Color.blue)
            Spacer()
            ThemeButton(icon: "shuffle.circle", text: "Motyw 2", color: Color.red)
            Spacer()
            ThemeButton(icon: "pawprint.circle", text: "Motyw 3", color: Color.green)
        }
        
    }
}

#Preview {
    ContentView(viewModel: MemoGameViewModel())
}
