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
    
    var body: some View {
        Button(action: {
            
        }){
            VStack{
                Text(.init(systemName: icon))
                    .font(.largeTitle)
                Text(text)
            }
        }
    }
}

#Preview {
    ThemeButton(icon: "pencil.circle", text: "Pencil", color: Color.red)
}
