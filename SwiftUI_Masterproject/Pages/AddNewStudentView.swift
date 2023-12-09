//
//  AddNewStudentView.swift
//  SwiftUI_Masterproject
//
//  Created by Oscar Rembold on 03.09.23.
//

import SwiftUI

struct AddNewStudentView: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var students: [StudentModel]
    
    @State var firstname: String = ""
    @State var lastname: String = ""
    @State var age: String = ""
    @State var semesterCount: String = ""
    @State var studentNumber: String = ""
    @State private var selectedCourseOfStudy = "Physics"
    
    var availableCoursesOfStudy = ["Physics", "Mathematics", "Computer science", "English"]
    
    func addStudentToList() {
        let studentModel = StudentModel(firstname: firstname, lastname: lastname, universityMail: "\(firstname).\(lastname)@stud.uni-regensburg.de", age: Int(age) ?? 0, semesterCount: Int(semesterCount) ?? 0, studentNumber: Int(studentNumber) ?? 0, courseOfStudy: selectedCourseOfStudy)
        students.insert(studentModel, at: 0)
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Image("ur_logo")
                .resizable()
                .frame(width: 145, height: 105)
                .padding(.top, 50)
            Text("Add new student")
                .padding(.top, 50)
                .padding(.bottom, 35)
                .padding(.leading, 10)
                .font(.system(size: 28))
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            HStack {
                Button {
                    dismiss()
                } label: {
                    Text("Back")
                        .foregroundStyle(.black)
                        .padding(10)
                }
                Spacer()
            }
        }
        .padding(20)
    }
}
