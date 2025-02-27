//
//  Utils.swift
//  OCE
//
//  Created by Dmytro Taradaika on 4/20/17.
//  Copyright © 2017 QIMS. All rights reserved.
//

import Foundation
import UIKit

struct AlertOption {
    enum Style {
        case `default`
        case cancel
        case destructive
        
        var uialertStyle: UIAlertActionStyle {
            switch self {
                case .default: return .default
                case .cancel: return .cancel
                case .destructive: return .destructive
            }
        }
    }
    
    let title: String
    let handler: (() -> Void)?
    let style: Style
    
    init(title: String, style: Style, handler: (() -> Void)?) {
        self.title = title
        self.handler = handler
        self.style = style
    }
}

final class Utils {

    static func getTopViewController() -> UIViewController? {
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }

            return topController
        }
        return nil
    }

    static func getSizeModalViewController() -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = bounds.size.width * 0.8
        let height = bounds.size.height * 0.9
        return CGSize(width: width, height: height)
    }

    static func getAppVersion() -> String {

        var appVersionString = ""

        if let versionString = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            appVersionString += "\(versionString)"
        }

        if let buildString = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            appVersionString += "(\(buildString))"
        }

        return appVersionString
    }
    
    static func salesForceDateFormat() -> String {
       return "yyyy-MM-dd'T'HH:mm:ss.SSSZZZ"
    }

}

extension UIColor {

    class var generateColor: UIColor {

        let red = Double(arc4random_uniform(256))
        let green = Double(arc4random_uniform(256))
        let blue = Double(arc4random_uniform(256))

        let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)

        return color
    }
}
