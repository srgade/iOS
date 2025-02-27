//
//  UserViewControllerViewModel.swift
//  Test MVVM
//
//  Created by Travis Ma on 9/8/17.
//  Copyright © 2017 Travis Ma. All rights reserved.
//

import UIKit

class UserViewControllerViewModel {
    private var user: User
    var name: String {
        return user.name
    }
    var role: String {
        return user.role
    }
    var address: Address {
        return user.address ?? Address()
    }
    var customers: [Customer] {
        return user.customers
    }
    
    init() {
        //create test data
        let customer1Addresses = [
            Address(address1: "222 E Main St", address2: "Apt 22", city: "Dallas", state: "TX", zip: "22222", isPrimary: false),
            Address(address1: "333 E Main St", address2: "", city: "Dallas", state: "TX", zip: "22222", isPrimary: true),
            Address(address1: "444 E Main St", address2: "Apt 44", city: "Dallas", state: "TX", zip: "22222", isPrimary: false)
        ]
        let customer2Addresses = [
            Address(address1: "222 S West Ave", address2: "", city: "San Jose", state: "CA", zip: "33333", isPrimary: false),
            Address(address1: "333 S West Ave", address2: "Apt 33", city: "San Jose", state: "CA", zip: "33333", isPrimary: true)
        ]
        let customer3Addresses = [
            Address(address1: "222 S Apple Pl", address2: "", city: "New York", state: "NY", zip: "44444", isPrimary: false)
        ]
        let customer1 = Customer(addresses: customer1Addresses, name: "Wayne Enterprises", industry: "Technology")
        let customer2 = Customer(addresses: customer2Addresses, name: "Joker LLC", industry: "Entertainment")
        let customer3 = Customer(addresses: customer3Addresses, name: "Riddler Inc", industry: "Healthcare")
        self.user = User(name: "Sideshow Bob",
                         role: "Admin",
                         address: Address(address1: "111 N Elm St",
                                          address2: "",
                                          city: "New York",
                                          state: "NY",
                                          zip: "11111",
                                          isPrimary: true),
                         customers: [customer1, customer2, customer3])
    }
}
