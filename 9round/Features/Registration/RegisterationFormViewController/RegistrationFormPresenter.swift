//
//  RegistrationFormPresenter.swift
//  9round
//
//  Created by EsraaGK on 11/05/2021.
//

import Foundation

protocol RegistrationFormPresenterProtocol: BaseDataRequest, DataUpdater {
    var router: RegistrationFormRouterProtocol? {get set}
    var interactor: RegistrationFormInteractorProtocol? {get set}
    var view: RegisterationFormViewProtocol? {get set}
    func showClubs()
}

class RegistrationFormPresenter: RegistrationFormPresenterProtocol {
    
    var router: RegistrationFormRouterProtocol?
    var interactor: RegistrationFormInteractorProtocol?
    var view: RegisterationFormViewProtocol?
    
    func getData() {
        
        if ConnectionCheck.isConnectedToNetwork() {
            interactor?.getData()
        } else {
            showError(with: "Check your internet")
        }
    }
    
    func showClubs() {
        router?.showClubs()
    }
    
    func update<T>(with data: T) {
        view?.update(with: data)
    }
    
    func showError(with error: String) {
        view?.showError(with: error)
    }
}

