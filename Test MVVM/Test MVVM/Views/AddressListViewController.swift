//
//  AddressListViewController.swift
//  Test MVVM
//
//  Created by Sumanth Reddy Gada on 02/08/24.
//  Copyright © 2024 Travis Ma. All rights reserved.
//

import UIKit

class AddressListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var viewModel: AddressListViewControllerViewModel?
    var selectedIndexPath: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel?.name
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddressViewController" {
            if let indexPath = sender as? IndexPath {
                guard let address = viewModel?.address(atIndex: indexPath.row) else {return}
                if let vc = segue.destination as? AddressViewController {
                    let vm = AddressViewControllerViewModel(address: address)
                    vc.viewModel = vm
                }
            }
        }
    }
}
extension AddressListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.addressCount ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if let address = viewModel?.address(atIndex: indexPath.row) {
            cell.textLabel?.text =  viewModel?.getCellTitle(address)
            cell.detailTextLabel?.text = viewModel?.getCellSubTitle(address)
            cell.accessoryType =  (viewModel?.isPrimary(address) == true) ? .checkmark : .none
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "AddressViewController", sender: indexPath)
    }
}
