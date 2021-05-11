//
//  RegistrationFormRouter.swift
//  9round
//
//  Created by EsraaGK on 11/05/2021.
//

import UIKit
protocol RegistrationFormRouterProtocol: Router {
    func showClubs()
}

class RegistrationFormRouter: RegistrationFormRouterProtocol {
    weak var view: UIViewController?

    func showClubs() {
        let vc: UIViewController = RegistrationClubsRouter.start() ?? UIViewController()
        view?.navigationController?.pushViewController(vc, animated: true)
    }
    
    static func start() -> UIViewController? {
        var router: RegistrationFormRouterProtocol = RegistrationFormRouter()
        var view: RegisterationFormViewProtocol = RegisterationFormViewController()
        var presenter: RegistrationFormPresenterProtocol = RegistrationFormPresenter()
        var interactor: RegistrationFormInteractorProtocol = RegistrationFormInteractor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        router.view = view as? UIViewController
        
        return view as? UIViewController
    }
    
    
}
