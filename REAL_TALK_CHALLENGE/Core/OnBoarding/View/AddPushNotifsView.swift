//
//  AddPushNotifs.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/8/23.
//

import SwiftUI

struct AddPushNotifsView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack(spacing: 20){
                Spacer().frame(height: 20)
                Text("Turn on push \n notifications")
                    .font(.title)
                    .bold()
                
                VStack(spacing: 20) {
                    Text("Stay in the loop with movie Exclusives in discussions ")
                    
                    Text("Get instant alerts on upccoming movies, fan favorite recommendations and \n excitting movie events")
                        .padding(.horizontal, 30)
                      
                   
                }
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray)
                
                Spacer()
                Text("You can manage your notification preferences anytime in your device settings.")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.gray)
                
                Spacer().frame(height: 20)
                
                NavigationLink {
                    WelcomeOnboardingView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Turn on notifications")
                        .modifier(SolidButtonModifier(paddingValue: 50, cornerValue: 10))
                }
                Button {
                  
                } label: {
                    Text("Not Now")
                        .modifier(OverlayButtonModifier(paddingValue: 98, cornerValue: 10))
                        .foregroundStyle(.white)
                }
                
                Spacer()
            }
        }
        .modifier(BackButtonModifier(buttonImage: "chevron.left"))
    }
}

#Preview {
    AddPushNotifsView()
}
