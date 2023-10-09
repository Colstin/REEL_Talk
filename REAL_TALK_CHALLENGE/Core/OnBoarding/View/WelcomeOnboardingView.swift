//
//  WelcomeOnboarding.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/8/23.
//

import SwiftUI

struct WelcomeOnboardingView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack{
                VStack {
                    Spacer().frame(height: 30)
                    Text("Welcome, Karl!")
                        .font(.largeTitle)
                    
                    
                    Image("Image1")
                        .resizable()
                        .cornerRadius(20)
                        .frame(width: 350, height: 350)
                   
                    Spacer().frame(height: 60)
                    
                    Text("Lets get to know you better and personalize your experience!")
                        .padding(.horizontal, 60)
                        .foregroundStyle(.gray)
                }
               
                
                Spacer()
                
                
                NavigationLink {
                    MovieGenreView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Continue")
                        .modifier(SolidButtonModifier(paddingValue: 100, cornerValue: 10))
                }
                
                Spacer()
            }
        }
        .modifier(BackButtonModifier(buttonImage: "chevron.left"))
    }
}

#Preview {
    WelcomeOnboardingView()
}
