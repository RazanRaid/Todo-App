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
        Todo(title: "go for walk",subtitle: ""),
        Todo(title: "study physcis",subtitle: "chapter 4"),
        Todo(title: "online shopping")
    ]
    
    var body: some View {
        
        NavigationStack {
            List($todos, editActions: [.all]){ $todo in
                
                NavigationLink{
                    TodoDetailView(todo: $todo)
                }label: {
                HStack {
                    Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                        .onTapGesture {
                            todo.isCompleted.toggle()
                        }
                    Text(todo.priortise ? "‼️" : "")
                    VStack(alignment: .leading ){
                            Text(todo.title)
                                .strikethrough( todo.isCompleted )

                        if !todo.subtitle.isEmpty {
                            Text(todo.subtitle)
                                .font(.caption)
                                .foregroundColor(.gray)
                                .strikethrough( todo.isCompleted )
                        }
                    }
                }
                
            }
            .navigationTitle("Todos")

                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

