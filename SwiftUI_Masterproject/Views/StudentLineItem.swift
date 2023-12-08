//
//  StudentLineItem.swift
//  SwiftUI_Masterproject
//
//  Created by Oscar Rembold on 08.12.23.
//

import SwiftUI

struct StudentLineItem: View {
    var student: StudentModel
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 45, height: 45)
                .padding(.trailing, 8)
            VStack(alignment: .leading) {
                Text(student.fullName)
                    .font(.headline)
                Text("Course of study: \(student.courseOfStudy)")
                    .font(.subheadline)
            }
        }
    }
}
