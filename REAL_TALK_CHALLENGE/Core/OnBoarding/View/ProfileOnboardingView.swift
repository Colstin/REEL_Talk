//
//  ProfileOnboarding.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/8/23.
//

import SwiftUI

struct ProfileOnboardingView: View {
    @State private var name = ""
    @State private var selectedDate = Date()
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack{
                Text("Your profile")
                    .font(.title2)
                    
               
                
                ZStack {
                    VStack {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 150))
                            .padding(.vertical)
                            .foregroundStyle(.gray)
                        
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 25))
                            .offset(x:40, y: -55)
                    }
                    
                    Text(name.prefix(1))
                        .font(.title)
                        .foregroundStyle(.white)
                }
                   
                Spacer()
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "pencil")
                        TextField("Enter your name", text: $name)
                            .foregroundColor(.white)
                            .tint(.white)
                    }
                    Divider()
                        .frame(height: 2)
                        .background(.white)
                        
                    Text("This will be the name displayed on profile")
                        .padding(.top, 5)
                        .foregroundStyle(.gray)
                    
                    DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                        .datePickerStyle(.compact)
                        .padding()
                    
                    Divider()
                        .frame(height: 2)
                        .background(.white)
                }
                .padding(.horizontal, 30)
              
                    
                Spacer()
                
                NavigationLink {
                    AddPushNotifsView()
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
    ProfileOnboardingView()
}
