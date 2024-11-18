//
//  ContentView.swift
//  TaskManagerApp
//
//  Created by Juan Cruz on 17/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks = [
        Task(title: "Tarea 1", description: "Hacer la navegación", isCompleted: false),
        Task(title: "Tarea 2", description: "Hablar con Juan", isCompleted: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach($tasks, id: \.id) { $task in
                    TaskCardView(
                        task: task,
                        onEdit: {
                            print("Editar tarea: \(task.title)")
                            // lógica de edición
                        },
                        onDelete: {
                            deleteTask(task)
                        }
                    )
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                }
                .background(Color(.systemGray6))
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Tareas")
            .background(Color(.systemGray6))
        }
    }
    
    private func deleteTask(_ task: Task) {
        tasks.removeAll { $0.id == task.id }
    }
}

#Preview {
    ContentView()
}


