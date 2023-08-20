//
//  TodoDetailView.swift
//  ToDo App
//
//  Created by Razan Raid on 19/08/2023.
//

import SwiftUI

struct TodoDetailView: View {
    @Binding var todo : Todo
    var body: some View {
        Form{
            Section("Details"){
                TextField("Title", text: $todo.title)
                TextField("Subtitle", text: $todo.subtitle)
                Toggle(isOn: $todo.isCompleted) {
                    HStack{
                        Image(systemName: "checkmark")
                        Text("Completed?")
                    }
                }
            
            }
            Section("Extra"){
                DatePicker("due date", selection: $todo.selectedDate
                           , in: ...Date(), displayedComponents: .date)
                                .datePickerStyle(GraphicalDatePickerStyle())
                                .labelsHidden()
                                .padding()
                Toggle(isOn: $todo.priortise) {
                    HStack{
                        Image(systemName: "calendar.badge.exclamationmark")
                        Text("priortise")
                        
                    }
                }
            }
        }
        .navigationTitle("Todo Details")
    }
    
    struct TodoDetailView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationStack{
                TodoDetailView( todo:.constant( Todo(title: "online shopping", subtitle: "!!!!1!1!1")))
            }
        }
    }
}
