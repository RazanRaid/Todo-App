//
//  ContentView.swift
//  ToDo App
//
//  Created by Razan Raid on 19/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "feed the cat"),
        Todo(title: "go for walk"),
        Todo(title: "study physcis",subtitle: "chapter 4"),
    ]
    
    var body: some View {
        
        NavigationStack {
            List($todos){ $todo in
                HStack {
                    Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                        .onTapGesture {
                            todo.isCompleted.toggle()
                        }
                    VStack(alignment: .leading ){
                        Text(todo.title)
                        .strikethrough( todo.isCompleted )
                        
                        if (todo.subtitle != nil) {
                            Text(todo.subtitle!)
                                .font(.caption)
                                .foregroundColor(.gray)
                                
                        }
                    }
                }
                
            }
            .navigationTitle("Todos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
