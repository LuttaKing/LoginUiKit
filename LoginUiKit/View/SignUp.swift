
import SwiftUI

struct SignUp: View {
    @Binding var showSignUpPage:Bool
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack(alignment:.leading,spacing: 20) {
            Button(action: {
                showSignUpPage = false
            }, label: {
                Image(systemName: "arrow.left")
                    .font(.title2)
                    .foregroundStyle(.gray)
            })
            Spacer()
            
            Text("Sign Up")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.top)
            
            Text("Please sign up to continue")
                .font(.callout)
                .foregroundStyle(.gray)
                .offset(y:-10)
            VStack{
                CustomTextField(sfIcon: "at", hint: "Enter your email", value: $email)
                CustomTextField(sfIcon: "person", hint: "Enter your username", value: $email)
                    .padding(.vertical,20)
                CustomTextField(sfIcon: "lock", hint: "Enter a password", isPassword: true, value: $password)
                
                
                    GradientButton(title: "Continue", icon: "arrow.right") {
                     
                    }
                    .padding(.vertical,30)
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    .disabled(email.isEmpty)
                    .opacity(email.isEmpty ? 0.5 : 1)
                
            
                
                
            }
           
            
            
            
            Spacer()
            
            HStack {
                Text("Already have an account?")
                    .foregroundStyle(.gray)
                Text("Log in")
                    .foregroundStyle(.orange)
                    .fontWeight(.bold)
                    .onTapGesture {
                        showSignUpPage.toggle()
                    }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.vertical,15)
        .padding(.horizontal,25)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    ContentView()
}
