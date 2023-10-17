//
//  ThemeButton.swift
//  MemoryGame
//
//  Created by student on 17/10/2023.
//

import SwiftUI

struct ThemeButton: View {
    
    static var themeIcon1 = ["😂", "🥸", "🤪", "😠", "😂", "🥸", "🤪", "😠"]
    
    static var themeIcon2 = ["😈", "👻", "💀", "🎃", "😈", "👻", "💀", "🎃", "🧟‍♀️", "🧛🏻‍♂️", "🧙🏻‍♂️", "🦇", "🧟‍♀️", "🧛🏻‍♂️", "🧙🏻‍♂️", "🦇"]
    
    static var themeIcon3 = ["🐭", "🦊", "🦄", "🐸", "🐭", "🦊", "🦄", "🐸", "🐺", "🐬", "🐢", "🦧", "🐺", "🐬", "🐢", "🦧"]
    
    var icon: String
    var text: String
    var color: Color
    @Binding var themeColor: Color
    @Binding var emojis: Array<String>
    
    var body: some View {
        Button(action: {
            themeColor = color
            switch color {
            case Color.blue:
                emojis = ThemeButton.themeIcon1.shuffled()
            case Color.red:
                emojis = ThemeButton.themeIcon2.shuffled()
            default:
                emojis = ThemeButton.themeIcon3.shuffled()
            }
            
        }){
            VStack{
                Text(icon)
                    .font(.largeTitle)
                Text(text)
            }
        }
    }
}

#Preview {
    ThemeButton(icon: "⚰︎", text: "Grave", color: Color.red, themeColor: .constant(Color.red), emojis: .constant([""]))
}
