import SwiftUI

struct ForgotPassword: View {
    @State private var email = ""
    
    @Environment(\.dismiss) private var dismis
   
    var body: some View {
        VStack(alignment:.leading,spacing: 20) {
            Button(action: {
                dismis()
            }, label: {
                Image(systemName: "arrow.left")
                    .font(.title2)
                    .foregroundStyle(.gray)
            })
            Spacer()
            
            Text("Forgot Password")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.top)
            
            Text("Please enter email to")
                .font(.callout)
                .foregroundStyle(.gray)
                .offset(y:-10)
            VStack{
                CustomTextField(sfIcon: "at", hint: "Enter your email", value: $email)
              
                
                
                    GradientButton(title: "Reset Link", icon: "arrow.right") {
                     dismis()
                    }
                    .padding(.vertical,30)
                    .frame(maxWidth: .infinity,alignment: .trailing)
                  
                
            }
            Spacer()
        }
        .padding(.vertical,15)
        .padding(.horizontal,25)
    }
}

#Preview {
    ContentView()
}
