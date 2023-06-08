//
//  Task.swift
//  ToDo
//
//  Created by Kristian Mitchell on 5/26/23.
//

import Foundation

struct Task: Identifiable, Hashable, Codable {
    var id = UUID()
    
    var title: String = ""
//    var detail: String?
    
    enum state {
        case inProgress
        case finished
        case waiting
        case paused
    }
    
}
