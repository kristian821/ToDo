//
//  Task.swift
//  ToDo
//
//  Created by Kristian Mitchell on 5/26/23.
//

import Foundation

struct Task: Equatable, Comparable, Codable {
    var id: UUID = UUID()
    
    var title: String
    var detail: String?
    
    enum state {
        case inProgress
        case finished
        case waiting
        case paused
    }
    
    static func < (lhs: Task, rhs: Task) -> Bool {
        
        return lhs.title < rhs.title
    }
    
    let taskEncoder = JSONEncoder()
    if let decodedTask = try? taskEncoder.decode(Task.self, from: decodedTask)
    
    let taskDecoder = JSONDecoder()
    
    
}
