//
//  Login.swift
//  LoginUiKit
//
//  Created by Denilson Washuma on 01/07/2024.
//

import SwiftUI

struct Login: View {
    
    @Binding var showSignUpPage:Bool
    @State private var email = ""
    @State private var password = ""
    @State private var showPassRest:Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15, content: {
            Spacer()
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text("Sign in to continue")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
                .padding(.top,-5)
            
            VStack(spacing:25){
                
                CustomTextField(sfIcon: "at", hint: "Enter email", value: $email)
                CustomTextField(sfIcon: "lock", hint: "Enter password",isPassword:true, value: $password)
                    .padding(.top,5)
                Button("Forgot Password?") {
                    showPassRest = true
                }
                .font(.callout)
                .fontWeight(.heavy)
                .tint(.orange)
                .hSpacing(.trailing)
                
                GradientButton(title: "Login", icon: "arrow.right") {
                    
                }
                .disabled(email.isEmpty)
                .opacity(email.isEmpty ?0.5 : 1.0)
                .hSpacing(.trailing)
            }
            .padding(.top,20)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 6, content: {
                Text("Don't have an account?")
                Button("Sign Up") {
                   showSignUpPage.toggle()
                    
                }
                .tint(.orange)
            })
            .frame(maxWidth: .infinity)
            
        })
        .padding(.vertical,15)
        .padding(.horizontal,25)
        .toolbar(.hidden, for: .navigationBar)
        .sheet(isPresented: $showPassRest, content: {
            ForgotPassword()
                .presentationDetents([.height(500)])
        })
        
    }
}

#Preview {
    ContentView()
}
