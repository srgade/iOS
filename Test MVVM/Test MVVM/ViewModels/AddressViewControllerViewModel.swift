//
//  AddressViewControllerViewModel.swift
//  Test MVVM
//
//  Created by Travis Ma on 9/8/17.
//  Copyright © 2017 Travis Ma. All rights reserved.
//

import Foundation

class AddressViewControllerViewModel {
    private let address: Address
    var address1: String {
        return address.address1
    }
    var address2: String {
        return address.address2
    }
    var city: String {
        return address.city
    }
    var state: String {
        return address.state
    }
    var zip: String {
        return address.zip
    }
    
    init(address: Address) {
        self.address = address
    }
}
