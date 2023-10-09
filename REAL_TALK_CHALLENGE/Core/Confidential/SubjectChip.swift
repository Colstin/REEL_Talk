//
//  SubjectChip.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/9/23.
//

import SwiftUI

extension Color {
    static func random() -> Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color(red: red, green: green, blue: blue)
    }
}

struct SubjectChip: View {
    let subject: String
    @State private var isTapped = false
    @State private var randomColor = Color.white.opacity(0.1)
    
    var body: some View {
        Button( action: {
            withAnimation(.spring()) {
                isTapped.toggle()
                if isTapped {
                    randomColor = Color.random()
                } else {
                    randomColor = Color.white.opacity(0.1)
                }
            }
        }) {
            Text(subject)
                .padding(10)
                .background(isTapped ? randomColor : Color.white.opacity(0.1))
                //.frame(minWidth: 0,maxWidth: .infinity, maxHeight: 40)
                .foregroundStyle(Color.white)
                .cornerRadius(5)
                .fontWeight(isTapped ? .black : .regular)
                .fixedSize(horizontal: true, vertical: false)
        }
        
    }
}

#Preview {
    SubjectChip(subject: "Western")
}
