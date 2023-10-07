//
//  TextFieldModifier.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/7/23.
//

import SwiftUI

import SwiftUI

struct TextFieldModifier: ViewModifier {
     @FocusState private var isInputActive: Bool
     @Binding var text: String
    //let strokeColor = Color(.white)// I wnat to make this dynamic
    
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.leading)
            .padding(12)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.white), lineWidth: 3)
            )
            .cornerRadius(10)
            .padding(.horizontal, 24)
            .tint(Color(.white))
            .foregroundStyle(.white)
        
    }
}

