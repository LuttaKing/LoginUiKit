//
//  CustomTextField.swift
//  LoginUiKit
//
//  Created by Denilson Washuma on 01/07/2024.
//

import SwiftUI

struct CustomTextField: View {
    var sfIcon: String
    var iconTint: Color = .gray
    var hint: String
    var isPassword: Bool = false
    
    @Binding var value: String
    
    @State private var showPassword:Bool = false
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 8, content: {
            Image(systemName: sfIcon)
                .foregroundStyle(iconTint)
                .frame(width: 30)
            //slighly push image down
                .offset(y:2)
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 8, content: {
                if isPassword{
                    Group{
                        if showPassword {
                            TextField(hint, text: $value)
                        } else {
                            SecureField(hint, text: $value)
                        }
                    }
                    
                    
                } else {
                    TextField(hint, text: $value)
                }
                Divider()
            })
            .overlay(alignment:.trailing) {
                //Password reveal
                if isPassword{
                    Button(action: {
                        withAnimation {
                            showPassword.toggle()
                        }
                        
                    }, label: {
                        Image(systemName:showPassword ? "eye.slash" : "eye")
                            .foregroundStyle(.gray)
                            .padding(10)
                            .containerShape(.rect)

                    })
                }
            }
            
            
            
            
        })
    }
}


