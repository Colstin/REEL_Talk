//
//  GenreChip.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/8/23.
//

import SwiftUI

struct GenreChip: View {
    let genre: String
    @State private var isTapped = false
    @State private var randomColor = Color.white.opacity(0.1)
    
    var body: some View {
        Button( action: {
            withAnimation(.spring()) {
                isTapped.toggle()
            }
        }) {
            Text(genre)
                .padding(10)
                .padding(.horizontal)
                .background(isTapped ? .white : Color.white.opacity(0.1))
                .foregroundStyle(isTapped ? .black : .white)
                .cornerRadius(20)
                .fixedSize(horizontal: true, vertical: false)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(.white), lineWidth: 1)
                )
        }

    }
}

#Preview {
    GenreChip(genre: "Horror")
}

/*
 .padding(10)
 .padding(.horizontal, 30)
 .background(isTapped ? .white : defaultButtonColor)
 .foregroundStyle(isTapped ? .black : .white)
 .frame(height: 40)
 .cornerRadius(20)
 .overlay(
     RoundedRectangle(cornerRadius: 20)
         .stroke(Color(.white), lineWidth: 2)
 )
 */
