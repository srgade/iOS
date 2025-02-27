//
//  UIViewControllersUtils.swift
//  OCE
//
//  Created by Travis Ma on 4/20/17.
//  Copyright © 2017 QIMS. All rights reserved.
//

import UIKit

protocol StoryboardInstantiable: NSObjectProtocol {
    static func instantiateViewController<T>(_ bundle: Bundle?) -> T
    static func instantiateViewController<T>(_ identifier: String, _ bundle: Bundle?) -> T
    static var defaultFileName: String { get }
}

extension StoryboardInstantiable where Self: UIViewController {

    static var defaultFileName: String {
        return String(describing: self)
    }

    static func instantiateViewController<T>(_ bundle: Bundle? = nil) -> T {
        let fileName = defaultFileName
        assert((bundle ?? Bundle.main).path(forResource: fileName, ofType: "storyboardc") != nil,
               "Can't load storyboard of given name")
        let sb = UIStoryboard(name: fileName, bundle: bundle)
        return sb.instantiateInitialViewController() as! T // swiftlint:disable:this force_cast
    }

    static func instantiateViewController<T>(_ identifier: String, _ bundle: Bundle? = nil) -> T {
        let fileName = defaultFileName
        assert((bundle ?? Bundle.main).path(forResource: fileName, ofType: "storyboardc") != nil,
               "Can't load storyboard of given name")
        let sb = UIStoryboard(name: fileName, bundle: bundle)
        return sb.instantiateViewController(withIdentifier: identifier) as! T // swiftlint:disable:this force_cast
    }

}

extension UITableView {
    func reloadData(completion: @escaping () -> Void) {
        UIView.animate(withDuration: 0, animations: { self.reloadData() }) { _ in completion() }
    }
}
