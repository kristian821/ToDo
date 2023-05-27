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
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("ToDo")
        print("accessed ToDo url")
    }
    func load() {
        do {
            
        }
    }
    
}


