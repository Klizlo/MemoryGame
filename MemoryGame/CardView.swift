//
//  CardView.swift
//  MemoryGame
//
//  Created by student on 10/10/2023.
//

import SwiftUI

struct CardView: View {
    let content: String
    @State var isHiden = true
    var body: some View {
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            Group{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isHiden ? 1 : 0)
            
            base.fill().opacity(isHiden ? 0 : 1)
        }
        .onTapGesture(perform: {
            isHiden.toggle()
        })
        

    }
}

#Preview {
    CardView(content: "")
}
