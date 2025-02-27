//
//  File.swift
//  Test MVVM
//
//  Created by Travis Ma on 9/8/17.
//  Copyright © 2017 Travis Ma. All rights reserved.
//

import Foundation

struct User {
    var name = ""
    var role = ""
    var address: Address?
    var customers = [Customer]()
}
