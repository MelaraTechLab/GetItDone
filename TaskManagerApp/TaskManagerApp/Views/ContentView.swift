//
//  ContentView.swift
//  TaskManagerApp
//
//  Created by Juan Cruz on 17/11/24.
//

import SwiftUI
let tasks = [
    Task(title: "Tarea 1" , description: "Hacer la navegacion", isCompleted: false),
    Task(title: "Tarea 2", description: "Hablar con Juan", isCompleted: true)
]
struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(tasks, id: \.id) { task in
                        TaskCardView(task: task)
                    }
                }
            }
            .navigationTitle("Tareas")
        }
    }
}

#Preview {
    ContentView()
}
