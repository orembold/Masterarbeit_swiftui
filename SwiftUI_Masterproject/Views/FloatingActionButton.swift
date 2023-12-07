//
//  FloatingActionButton.swift
//  SwiftUI_Masterproject
//
//  Created by Oscar Rembold on 07.12.23.
//

import SwiftUI

struct FloatingActionButton: View {
    
    @State var action: () -> Void
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    action()
                }) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                        .padding()
                        .cornerRadius(25)
                }
                .padding(.trailing, 10)
            }
        }
    }
}
