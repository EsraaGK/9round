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
    func register(_ with: User)
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
        guard let success = data as? SuccessRegistration else { return }
         if (success.success ?? false) {
            router?.changeRootViewToLogin()
         } else {
            showError(with: success.message ?? "")
         }
    }
    
    func showError(with error: String) {
        view?.showError(with: error)
    }
    
    func register(_ with: User) {
        interactor?.register(with)
    }
}

