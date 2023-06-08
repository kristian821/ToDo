//
//  TaskData.swift
//  ToDo
//
//  Created by Kristian Mitchell on 5/31/23.
//

import SwiftUI

class TaskData: ObservableObject {
    @Published var tasks: [Task] = []
    
    func add(_ task: Task) {
        tasks.append(task)
    }
    
    func remove(_ task: Task) {
        tasks.removeAll { $0.id == task.id}
    }
    
    private static func getToDoFileURL() throws -> URL {
            return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("todo.data", conformingTo: .json)
    }
    func load() {
        do {
            let fileURL  = try TaskData.getToDoFileURL()
            let data = try Data(contentsOf: fileURL)
            tasks = try JSONDecoder().decode([Task].self, from: data)
            print("Tasks loaded: \(tasks.count)")
        } catch {
            print("Failed to load from file.")
        }
    }
    
    func save() {
        do {
            let fileURL = try TaskData.getToDoFileURL()
            let data = try JSONEncoder().encode(tasks)
            try data.write(to: fileURL, options: [.atomic, .completeFileProtection])
            print("Tasks saved")
        } catch {
            print("Unable to save")
        }
    }
    
}


