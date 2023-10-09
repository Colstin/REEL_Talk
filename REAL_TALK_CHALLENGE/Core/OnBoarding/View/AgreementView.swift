//
//  AgreementView.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/9/23.
//

import SwiftUI

struct AgreementView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "nosign")
                        Text("Keep it reel,")
                    }
                    .font(.largeTitle)
                    Text("but be kind")
                        .font(.largeTitle)
                    
                    Spacer().frame(height: 40)
                    
                    Text("""
                         Welcome, we're so excited to have you here!
                         
                         At Reel Talk we belive that every individual brings somrhting unique to our community. We are committed to fostering a safe and respectful
                         environment for everyone to engage in excited conversations.
                         
                         in our mission to encourage respect and belongingness, we ask that you join us by adhering to our guidelines. We take these guidelines seriously, and failure to adhere to them may result in being banned from our community. Thanks for your cooperation.
                         
                         With love,
                         The Reel Talk Team
                         """)
                    
                    Spacer().frame(height: 40)
                    
                }
                .padding(.horizontal)
                NavigationLink {
                    
                } label: {
                    Text("I agree")
                        .modifier(SolidButtonModifier(paddingValue: 100, cornerValue: 10))
                }

            }
        }
        .modifier(BackButtonModifier(buttonImage: "chevron.left"))
    }
}

#Preview {
    AgreementView()
}
