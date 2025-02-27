//
//  CustomersViewControllerViewModel.swift
//  Test MVVM
//
//  Created by Travis Ma on 9/8/17.
//  Copyright © 2017 Travis Ma. All rights reserved.
//

import Foundation

class CustomerListViewControllerViewModel {
    private let customers: [Customer]
    var customerCount: Int {
        return customers.count
    }
    
    init(customers: [Customer]) {
        self.customers = customers
    }
    
    func customer(atIndex: Int) -> Customer {
        return customers[atIndex]
    }
    
    func getCellTitle(_ customer: Customer) -> String {
        return customer.name + " (\(customer.industry))"
    }
    
    func getCellSubTitle(_ customer: Customer) -> String {
        let address = self.getDisplayAddress(customer: customer)
        return "\(address?.address1 ?? "Unknown Address") \(address?.address2 ?? "") \(address?.city ?? "") \(address?.state ?? "") \(address?.zip ?? "")"
    }

    private func getDisplayAddress(customer: Customer) -> Address? {
        let addresses = customer.addresses
        // First, look for the primary address
        if let primaryAddress = addresses.first(where: { $0.isPrimary }) {
            return primaryAddress
        }
        // If no primary address is found, return the first address
        return addresses.first
    }

}
