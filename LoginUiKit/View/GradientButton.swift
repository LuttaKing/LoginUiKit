//
//  GradientButton.swift
//  LoginUiKit
//
//  Created by Denilson Washuma on 01/07/2024.
//

import SwiftUI

struct GradientButton: View {
    var title:String
    var icon: String
    var onClick: () -> ()
    
    var body: some View {
        Button(action: onClick) {
            HStack(spacing:15){
                Text(title)
                Image(systemName: icon)
            }
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .padding(.vertical,12)
            .padding(.horizontal,35)
            .background(.linearGradient(colors:[.orange,.yellow], startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            
        }
    }
}

