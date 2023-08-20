//
//  Todo.swift
//  ToDo App
//
//  Created by Razan Raid on 19/08/2023.
//

import SwiftUI

struct Todo: Identifiable, Codable {
    var id = UUID()
    var title : String
    var isCompleted = false
    var subtitle = ""
    var selectedDate = Date()
    var priortise = false
}
