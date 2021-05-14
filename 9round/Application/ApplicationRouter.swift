//
//  ApplicationRouter.swift
//  9round
//
//  Created by EsraaGK on 14/05/2021.
//

import UIKit
//
//protocol ApplicationRouterProtocol {
//    var window: UIWindow? {get set}
//
//    static func startRegistration(with window: UIWindow?)
//    func startLogIn()
//}

class ApplicationRouter {
    weak var window: UIWindow?
    static let shared = ApplicationRouter()
    private init () {}
    
     func startRegistration(with window: UIWindow?) {
        ApplicationRouter.shared.window = window
        let niblessNavigationController = NiblessNavigationController()
        let viewController: UIViewController = RegistrationFormRouter.start() ?? UIViewController()
        niblessNavigationController.setViewControllers([viewController], animated: false)
        window?.rootViewController = niblessNavigationController
        window?.makeKeyAndVisible()
    }
    
     func startLogIn() {
        let niblessNavigationController = NiblessNavigationController()
        niblessNavigationController.setViewControllers([UIViewController()], animated: false)
        window?.rootViewController = niblessNavigationController
    }
}
