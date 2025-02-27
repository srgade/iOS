//
//  AddressListViewModel.swift
//  Test MVVM
//
//  Created by Sumanth Reddy Gada on 02/08/24.
//  Copyright © 2024 Travis Ma. All rights reserved.
//

import Foundation

class AddressListViewControllerViewModel {
    private var customer: Customer
    var name: String {
        return customer.name + " (\(customer.industry))"
    }
    var addresses: [Address] {
        return customer.addresses
    }
    var addressCount: Int {
        return customer.addresses.count
    }
    
    init(customer: Customer) {
        self.customer = customer
    }
    
    func address(atIndex: Int) -> Address {
        return customer.addresses[atIndex]
    }
    
    func getCellTitle(_ address: Address) -> String {
        return "\(address.address1) \(address.address2)"
    }
    
    func getCellSubTitle(_ address: Address) -> String {
        return "\(address.city) \(address.state) \(address.zip)"
    }
    
    func isPrimary(_ address: Address) -> Bool {
        return address.isPrimary
    }
}
