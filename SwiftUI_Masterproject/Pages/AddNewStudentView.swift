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
    
    @State var studentNumber: String = ""
    @State private var selectedCourseOfStudy = "Physics"
    
    var availableCoursesOfStudy = ["Physics", "Mathematics", "Computer science", "English"]
    
    func addStudentToList() {
        let studentModel = StudentModel(studentNumber: Int(studentNumber) ?? 0, courseOfStudy: selectedCourseOfStudy)
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
            
            Picker("Select course of study", selection: $selectedCourseOfStudy) {
                ForEach(availableCoursesOfStudy, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.wheel)
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
            Spacer()
        }
        .padding(20)
    }
}

struct AddNewStudentView_Preview: PreviewProvider {
    @State static var studentList = ExampleData.getStudentsData()
    static var previews: some View {
        AddNewStudentView(students: $studentList)
    }
}
