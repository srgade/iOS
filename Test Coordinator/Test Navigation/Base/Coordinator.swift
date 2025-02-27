//
//  Coordinator.swift
//  OCE
//
//  Created by Travis Ma on 4/20/17.
//  Copyright © 2017 QIMS. All rights reserved.
//

import Foundation
import UIKit

/// https://vimeo.com/144116310
/// https://news.realm.io/news/tryswift-ayaka-nonaka-boundaries-in-practice/
protocol Coordinator: AnyObject {
    
    /// Start coordinator logic here. You should present initial UI here
    func start()

    /// The entry point for each Coordinator is UIViewController on which it coordinates it's logic
    var displayContext: UIViewController { get }
    
    func dismiss(completion: (() -> Void)?)
}

extension Coordinator {
    func dismiss(completion: (() -> Void)?) {
    }
}
