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
    
    @State var firstname: String = ""
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
                .padding(.leading, 10)
                .font(.system(size: 28))
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            VStack(spacing: 25) {
                TextField("Firstname", text: $firstname)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("E-mail", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Password", text: $password)
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
                        Text("Register")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color.black)

                    Button("Forgot password?") {}
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
            .padding(.horizontal, 10)
            Spacer()
            HStack {
                Text("Already have an account?")
                Button(action: {
                    dismiss()
                }) {
                    Text("Log in")
                        .tint(Color.red)
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

