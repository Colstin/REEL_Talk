//
//  LandingPage.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/6/23.
//

import SwiftUI

struct LandingPage: View {
    @State var tabSelectedIndex = 0
    private let image1Text = "Welcom to REEL Talk, a community designed for true film and TV show fans"
    private let image2Text = "Discover and discuss your favorite films, movies, and shows"
    private let image3Text = "Let's get started!"
    
    private var paddingSize = CGFloat()
        
    var body: some View {
        NavigationStack {
            ZStack() {
                Color.black.ignoresSafeArea()
                VStack(spacing: 50) {
                    TabView(selection: $tabSelectedIndex) {
                        ImageCard(imageName: "Image1", text: image1Text)
                            .tag(0)
                        ImageCard(imageName: "Image2", text: image2Text)
                            .tag(1)
                        ImageCard(imageName: "Image3", text: image3Text)
                            .tag(2)
                    }
                    
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                    .padding(.vertical, tabSelectedIndex == 2 ? 20 : 50)
                    .modifier(PageIndicatorModifier())
                    
                    if tabSelectedIndex == 2 {
                        Button {
                            
                        } label: {
                            Text("Continue")
                                .modifier(SolidButtonModifier(paddingValue: 100, cornerValue: 10))
                        }
                    }
                  
                    
                    HStack {
                        Text("Already have an account? ")
                            .foregroundStyle(.white)
                        NavigationLink {
                            LoginView()
                                .navigationBarBackButtonHidden()
                        } label: {
                            Text("Log in")
                        }
                        .foregroundStyle(.orange)
                    }
                }
               
            }
        }
        .modifier(OrientationLockModifier(lockOrientation: .portrait))
    }
}

#Preview {
    LandingPage()
}
