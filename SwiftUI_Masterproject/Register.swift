//
//  Register.swift
//  SwiftUI_Masterproject
//
//  Created by Oscar Rembold on 03.09.23.
//

import SwiftUI

struct Register: View {
    @Environment(\.dismiss) var dismiss
    
    var languages = ["Deutschland", "Österreich", "Schweiz"]
    
    @State var email: String = ""
    @State var password: String = ""
    @State private var selectedLanguage = "Deutschland"
    var body: some View {
        VStack(alignment: .center) {
            Image("ur_logo")
                .resizable()
                .frame(width: 246, height: 175)
            Text("Register")
                .padding(.top, 50)
                .padding(.bottom, 35)
                .font(.system(size: 28))
                .bold()
                .frame(width: 260, alignment: .leading)
            VStack(spacing: 25) {
                TextField("Firstname", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("E-mail", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Repeat Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Picker("Please choose a color", selection: $selectedLanguage) {
                                ForEach(languages, id: \.self) {
                                    Text($0)
                                }
                            }
                .pickerStyle(.wheel)
                .frame(height: 70)
                .padding(.bottom, 15)
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
                Text("Already have an account?")
                Button(action: {
                    dismiss()
                }) {
                    Text("Log in")
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct Register_Preview: PreviewProvider {
    static var previews: some View {
        Register()
    }
}

