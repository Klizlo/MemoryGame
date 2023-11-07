//
//  MemoGameViewModel.swift
//  MemoryGame
//
//  Created by student on 07/11/2023.
//

import Foundation
import SwiftUI

class MemoGameViewModel : ObservableObject{
    
    typealias Card = MemoGameModel<String>.Card
    
    private static var emojis = ["😀", "😠", "😆", "🥺", "🥲", "😭", "😱", "😧", "🙄"]
    
    @Published private var model : MemoGameModel<String> = createGame()
    
    private static func createGame() -> MemoGameModel<String> {
        MemoGameModel(numberPairsOfCard: 10) {
            index in
            if emojis.indices.contains(index){
                return emojis[index]
            }
            return "??"
        }
    }
    
    var cards : Array<Card> {
        return model.cards
    }
    
    func choose(_ card: Card){
        model.choose(card)
    }
    
    var themeColor = Color.blue
    
    func changeThemeColor(color: Color) {
        themeColor = color
    }
    
}
