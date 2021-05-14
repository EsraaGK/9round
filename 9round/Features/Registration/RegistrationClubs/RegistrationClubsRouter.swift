//
//  RegistrationClubsRouter.swift
//  9round
//
//  Created by EsraaGK on 11/05/2021.
//

import UIKit

protocol RegistrationClubsRouterProtocol {
    var view: UIViewController? {get set}
    func backToRegistrationForm(_ chainId: Int?)
    static func start(delegate: RedistrationClubsDelegate?) -> UIViewController?
}

protocol RedistrationClubsDelegate: class {
    func didchoose(chainId: Int?)
}

class RegistrationClubsRouter: RegistrationClubsRouterProtocol {

   weak var view: UIViewController?
    
    static func start(delegate: RedistrationClubsDelegate?) -> UIViewController? {
        let router = RegistrationClubsRouter()
        let view = RegistrationClubsViewController()
        let presenter = RegistrationClubsPresenter()
        let interactor = RegistrationClubsInteractor()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        presenter.delegate = delegate
        
        interactor.presenter = presenter
        
        router.view = view
        return view
    }
    
    func backToRegistrationForm(_ chainId: Int?) {
        view?.navigationController?.popViewController(animated: true)
    }
    
}
