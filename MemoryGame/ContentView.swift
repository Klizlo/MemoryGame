//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 10/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojis = ThemeButton.themeIcon1
    
    @State var themeColor = Color.blue

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
        .foregroundColor(themeColor)
    }

    var cards : some View {
        LazyVGrid(columns: 
        [GridItem(.adaptive(minimum: 80))]){
            ForEach(emojis.indices, id: \.self){
                index in CardView(content: emojis[index])
            }
            .aspectRatio(2/3, contentMode: .fit)
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
            ThemeButton(icon: "☺︎", text: "Motyw 1", color: Color.blue, themeColor: $themeColor, emojis: $emojis)
            Spacer()
            ThemeButton(icon: "☠︎", text: "Motyw 2", color: Color.red, themeColor: $themeColor, emojis: $emojis)
            Spacer()
            ThemeButton(icon: "♼", text: "Motyw 3", color: Color.green, themeColor: $themeColor, emojis: $emojis)
        }
        
    }
}

#Preview {
    ContentView()
}
