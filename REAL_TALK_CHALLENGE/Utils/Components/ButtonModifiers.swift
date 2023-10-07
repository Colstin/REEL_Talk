//
//  ButtonModifiers.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/7/23.
//

import SwiftUI

struct SolidButtonModifier: ViewModifier {
    let paddingValue: CGFloat
    let cornerValue: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .padding(.horizontal, paddingValue)
            .background(Color(.systemOrange))
            .cornerRadius(cornerValue)
    }
}

struct OverlayButtonModifier: ViewModifier {
    let cornerValue: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .padding(.horizontal, 90)
            .overlay(
                RoundedRectangle(cornerRadius: cornerValue)
                    .stroke(Color(.systemOrange), lineWidth: 2)
            )
            .padding(5)
    }
}


struct BackButtonModifier: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    let buttonImage: String
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: buttonImage)
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
    }
}
