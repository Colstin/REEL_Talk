//
//  LoginView.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/7/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    private let emailPlaceholder = "Email"
    private let passwordPlaceholder = "Password"
    private let forgotPassword = "Forgot Password?"
    private let login = "LOGIN"
    private let backButtonName = "xmark"
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(spacing: 50) {
                
                Image("movieReel")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .center)

                VStack {
                    AuthInputView(title: nil,
                                  subtitle: nil,
                                  placeholder: emailPlaceholder,
                                  placeHolderImage: "envelope.fill",
                                  text: $email,
                                  isSecureField: false)
                    AuthInputView(title: nil,
                                  subtitle: nil,
                                  placeholder: passwordPlaceholder,
                                  placeHolderImage: "lock.fill",
                                  text: $password,
                                  isSecureField: true)
                    
                    // Forgot Password
                    Button {
                        print("show forgot password")
                    } label: {
                        Text(forgotPassword)
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.trailing, 28)
                            
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)

                }
                
                // Login Button
                Button {
                  
                } label: {
                    Text(login)
                        .modifier(SolidButtonModifier(paddingValue: 130, cornerValue: 30))
                }
                .disabled(email.isEmpty || password.isEmpty)
                .opacity(email.isEmpty || password.isEmpty ? 0.5 : 1.0)
            }
            .modifier(BackButtonModifier(buttonImage: backButtonName))
 
        }
        .modifier(OrientationLockModifier(lockOrientation: .portrait))
    }
}

#Preview {
    LoginView()
}
