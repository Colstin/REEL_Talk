//
//  ImageCard.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/7/23.
//

import SwiftUI

struct ImageCard: View {
    let imageName: String
    let text: String
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Image(imageName)
                .resizable()
                //.aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .frame(width: 350, height: 350)
            
            Text(text)
                .multilineTextAlignment(.center)
                .padding(.top, 50)
                .font(.title3)
                .padding(.horizontal)
                .foregroundStyle(Color(.systemGray))
            Spacer()
        }
    }
}

#Preview {
    ImageCard(imageName: "Image3", text: "Welcom to REEL Talk, a community designed for true film and TV show fans")
}
