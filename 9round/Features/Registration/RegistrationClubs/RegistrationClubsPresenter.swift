//
//  RegistrationClubsPresenter.swift
//  9round
//
//  Created by EsraaGK on 14/05/2021.
//

import Foundation

protocol RegistrationClubsPresenterProtocol: BaseDataRequest, DataUpdater {
    var router: RegistrationClubsRouterProtocol? {get set}
    var interactor: RegistrationClubsInteractorProtocol? {get set}
    var view: RegistrationClubsViewProtocol? {get set}
    
    func backToRegistrationForm(_ with : Int?)
    
}

class RegistrationClubsPresenter: RegistrationClubsPresenterProtocol {
    var router: RegistrationClubsRouterProtocol?
    var interactor: RegistrationClubsInteractorProtocol?
    var view: RegistrationClubsViewProtocol?
    weak var delegate: RedistrationClubsDelegate?

    func backToRegistrationForm(_ with: Int?) {
        delegate?.didchoose(chainId: with)
        router?.backToRegistrationForm(with)
    }
    
    func getData() {
        interactor?.getData()
    }
    
    func update<T>(with data: T) {
        if let temp = data as? [Club] {
            view?.update(with: temp.filter({
                $0.divisionId == 343
            }))
        }
    }
    
    func showError(with error: String) {
        view?.showError(with: error)
    }
}
