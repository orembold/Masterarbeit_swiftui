//
//  ContentView.swift
//  SwiftUI_Masterproject
//
//  Created by Oscar Rembold on 22.08.23.
//

import SwiftUI

struct ContentView: View {
    @State var studentsList = ExampleData.getStudentsData()
    var body: some View {
        Home(studentsList: $studentsList)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
