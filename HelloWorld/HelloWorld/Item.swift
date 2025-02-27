//
//  Item.swift
//  HelloWorld
//
//  Created by Sumanth Reddy Gada on 02/07/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
