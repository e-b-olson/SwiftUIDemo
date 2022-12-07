//
//  TableDemoView.swift
//  SwiftUIDemo
//
//  Created by e.b.olson on 11/22/22.
//

import SwiftUI

struct Student: Identifiable {
    let firstName: String
    let lastName: String
    let house: String
    let id = UUID()
}

struct TableDemoView: View {
    @State private var selectedStudents = Set<Student.ID>()
    
    private let exampleData = [
        Student(firstName: "Harry", lastName: "Potter", house: "Gryffindor"),
        Student(firstName: "Hermione", lastName: "Granger", house: "Gryffindor"),
        Student(firstName: "Hannah", lastName: "Abbott", house: "Hufflepuff"),
        Student(firstName: "Su", lastName: "Li", house: "Ravenclaw"),
        Student(firstName: "Draco", lastName: "Malfoy", house: "Slytherin")
    ]
    
    var body: some View {
        /*
         This code is adapted from Apple's documentation
         https://developer.apple.com/documentation/swiftui/table
         
         *****
         On iOS, and in other situations with a compact horizontal
         size class, tables don’t show headers and collapse all
         columns after the first. If you present a table on iOS,
         you can customize the table’s appearance by implementing
         compact-specific logic in the first column.
         *****
         
         Note: Table is currently only available in iOS 16.0+
         */
        if #available(iOS 16, *) {
            Table(exampleData, selection: $selectedStudents) {
                TableColumn("First Name", value: \.firstName)
                TableColumn("Last Name", value: \.lastName)
                TableColumn("House", value: \.house)
            }
            Text("\(selectedStudents.count) selected")
        } else {
            Text("Placeholder View")
            Text("(Table only available in iOS 16+)")
        }
    }
}

struct TableDemoView_Previews: PreviewProvider {
    static var previews: some View {
        TableDemoView()
    }
}
