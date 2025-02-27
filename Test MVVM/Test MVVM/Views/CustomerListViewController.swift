//
//  CustomerViewController.swift
//  Test MVVM
//
//  Created by Travis Ma on 9/8/17.
//  Copyright © 2017 Travis Ma. All rights reserved.
//

import UIKit

class CustomerListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel: CustomerListViewControllerViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddressListViewController" {
            if let indexPath = sender as? IndexPath {
                guard let customer = viewModel?.customer(atIndex: indexPath.row) else {return}
                if let vc = segue.destination as? AddressListViewController {
                    let vm = AddressListViewControllerViewModel(customer: customer)
                    vc.viewModel = vm
                }
            }
        }
    }
}

extension CustomerListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.customerCount ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if let customer = viewModel?.customer(atIndex: indexPath.row) {
            cell.textLabel?.text = viewModel?.getCellTitle(customer)
            cell.detailTextLabel?.text = viewModel?.getCellSubTitle(customer)
        }
        return cell
    }
    
    // UITableViewDelegate Method
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "AddressListViewController", sender: indexPath)
    }
    
}
