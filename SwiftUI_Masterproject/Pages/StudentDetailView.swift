//
//  StudentDetailView.swift
//  SwiftUI_Masterproject
//
//  Created by Oscar Rembold on 07.12.23.
//

import SwiftUI

struct StudentDetailsView: View {
    var student: StudentModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            VStack(alignment: .leading) {
                Text(student.fullName)
                    .font(.title)
                .padding(.bottom, 10)
                VStack(alignment: .leading, spacing: 8) {
                    Text("Age: \(student.age)")
                    Text("University mail: \(student.universityMail)")
                    Text("Semester count: \(student.semesterCount)")
                    Text("Course of Study: \(student.courseOfStudy)")
                    Text("Student number: \(student.studentNumber)")
                }
            }
            Spacer()
        }
        .navigationBarTitle(student.fullName)
        .padding(20)
    }
}

struct Student_Detail_Preview: PreviewProvider {
  
    static var previews: some View {
        StudentDetailsView(student: ExampleData.getStudentsData().first!)
    }
}
