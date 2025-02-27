//
//  ViewController.swift
//  Test MVVM
//
//  Created by Travis Ma on 9/8/17.
//  Copyright © 2017 Travis Ma. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    @IBOutlet weak var labelRole: UILabel!
    @IBOutlet weak var labelName: UILabel!
    var viewModel = UserViewControllerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = viewModel.name
        labelRole.text = viewModel.role
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CustomerListViewController" {
            if let vc = segue.destination as? CustomerListViewController {
                let vm = CustomerListViewControllerViewModel(customers: viewModel.customers)
                vc.viewModel = vm
            }
        }
        if segue.identifier == "AddressViewController" {
            if let vc = segue.destination as? AddressViewController {
                let vm = AddressViewControllerViewModel(address: viewModel.address)
                vc.viewModel = vm
            }
        }
    }

}

