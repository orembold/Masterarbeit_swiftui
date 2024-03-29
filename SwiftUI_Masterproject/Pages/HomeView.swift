//
//  Home.swift
//  SwiftUI_Masterproject
//
//  Created by Oscar Rembold on 07.12.23.
//

import SwiftUI

struct Home: View {
    
    @Binding var studentsList: [StudentModel]
    
    @State var isAddingNewStudent = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("ur_logo")
                        .resizable()
                        .frame(width: 145, height: 105)
                        .padding(.top, 50)
                    Text("Students")
                        .padding(.leading, 20)
                        .padding(.top, 20)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    List($studentsList, id: \.self, editActions: .delete) { $student in
                        NavigationLink(destination: StudentDetailsView(student: student)) {
                            StudentLineItem(student: student)
                        }
                    }
                    .listStyle(.inset)
                }
                FloatingActionButton {
                    isAddingNewStudent.toggle()
                }
            }
            .fullScreenCover(isPresented: $isAddingNewStudent) {
                AddNewStudentView(students: $studentsList)
            }
        }
        
    }
}

struct Home_Preview: PreviewProvider {
    @State static var studentList = ExampleData.getStudentsData()
    static var previews: some View {
        Home(studentsList: $studentList)
    }
}

