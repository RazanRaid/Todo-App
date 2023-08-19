//
//  ContentView.swift
//  ToDo App
//
//  Created by Razan Raid on 19/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        @State var todos = [
            Todo(title: "feed the cat"),
            Todo(title: "go for walk"),
            Todo(title: "study physcis")
        ]
        
        List(todos){ todo in
            Text(todo.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
