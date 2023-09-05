//
//  Login.swift
//  SwiftUI_Masterproject
//
//  Created by Oscar Rembold on 03.09.23.
//

import SwiftUI

struct Login: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var presentRegister: Bool = false
    var body: some View {
        VStack(alignment: .center) {
            Image("ur_logo")
                .resizable()
                .frame(width: 246, height: 175)
            Text("Login")
                .padding(.top, 50)
                .padding(.bottom, 35)
                .font(.system(size: 28))
                .bold()
                .frame(width: 260, alignment: .leading)
            VStack(spacing: 25) {
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                VStack {
                    Button {
                            
                    } label: {
                        Text("Login")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.black)

                    Button("Forgot password?") {}
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
            .padding(.horizontal, 75)
            Spacer()
            HStack {
                Text("Don't have an account yet?")
                Button(action: {
                    presentRegister.toggle()
                }) {
                    Text("Sign up")
                }
            }
        }
        .frame(maxWidth: .infinity)
        .fullScreenCover(isPresented: $presentRegister) {
            Register()
        }
    }
}
