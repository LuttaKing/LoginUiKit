//
//  ContentView.swift
//  LoginUiKit
//
//  Created by Denilson Washuma on 01/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showSignUp: Bool = false
    var body: some View {
        NavigationStack{
            Login(showSignUpPage: $showSignUp)
                .navigationDestination(isPresented: $showSignUp) {
                SignUp(showSignUpPage: $showSignUp)
                }
        }
        .overlay {
//ios 17 bounce animations
            if #available(iOS 17, *){
                CicleView().animation(.smooth(duration: 0.45, extraBounce: 0), value: showSignUp)
            } else {
                CicleView().animation(.easeInOut(duration: 0.3), value: showSignUp)
            }
            
        }
    }
    
    //Moving blurred background
    @ViewBuilder
    func CicleView() -> some View{
        Circle().fill(
            .linearGradient(colors: [.yellow,.orange], startPoint: .top, endPoint: .bottom)
        )
        .frame(width: 200, height: 200)
        //move when signup
        .offset(x:showSignUp ? 90:-90 , y: -90)
        .blur(radius: 15)
        .hSpacing(showSignUp ? .trailing :.leading)
        .vSpacing(.top)
    }
}

#Preview {
    ContentView()
}
