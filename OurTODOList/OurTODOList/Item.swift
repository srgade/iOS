//
//  Item.swift
//  OurTODOList
//
//  Created by Sumanth Reddy Gada on 03/07/24.
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
