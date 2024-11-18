//
//  Task.swift
//  TaskManagerApp
//
//  Created by Juan Cruz on 17/11/24.
//
import Foundation

struct Task: Identifiable {
    let id: UUID = UUID()
    let title: String
    let description: String
    let isCompleted: Bool
}
