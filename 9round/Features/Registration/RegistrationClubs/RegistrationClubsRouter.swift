//
//  RegistrationClubsRouter.swift
//  9round
//
//  Created by EsraaGK on 11/05/2021.
//

import UIKit

protocol RegistrationClubsRouterProtocol: Router {
}

class RegistrationClubsRouter: RegistrationClubsRouterProtocol {
    var view: UIViewController?
    
    static func start() -> UIViewController? {
        return UIViewController()
    }
}
