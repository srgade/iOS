//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Sumanth Reddy Gada on 31/07/24.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
