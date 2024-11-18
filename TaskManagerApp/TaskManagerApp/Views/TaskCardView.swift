//
//  TaskCardView.swift
//  TaskManagerApp
//
//  Created by Juan Cruz on 17/11/24.
//

import SwiftUI

struct TaskCardView: View {
    let task: Task
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(task.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Text(task.isCompleted ? "Completada" : "Pendiente")
                    .foregroundColor(task.isCompleted ? .green : .red)
                    .font(.callout)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(task.isCompleted ? Color.green.opacity(0.2) : Color.red.opacity(0.2))
                    .cornerRadius(8)
            }
            Text(task.description)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
        .padding(.horizontal, 16)
    }
}

#Preview {
    TaskCardView(task: Task(title: "Tarea 1", description: "Prueba de tarjeta", isCompleted: true))
}

