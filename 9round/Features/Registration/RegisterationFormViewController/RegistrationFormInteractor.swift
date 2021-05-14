//
//  RegistrationFormInteractor.swift
//  9round
//
//  Created by EsraaGK on 11/05/2021.
//

import PromiseKit

protocol RegistrationFormInteractorProtocol: BaseDataRequest {
    var presenter: DataUpdater? { get set }
    func register(_ user: User)
}

class RegistrationFormInteractor: RegistrationFormInteractorProtocol {
    var presenter: DataUpdater?
    
    func getData() {
    }
    
    func register(_ user: User) {
        NetworkManger.shared.callApi(targetType: AuthonticationTargetType.registerUser(user: user))
            .done {[weak self] (success: SuccessRegistration) in
            self?.presenter?.update(with: success)
            }.catch { [weak self] in
                self?.presenter?.showError(with: $0.localizedDescription)
            }
    }
}
