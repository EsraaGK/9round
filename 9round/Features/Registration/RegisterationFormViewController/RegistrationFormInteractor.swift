//
//  RegistrationFormInteractor.swift
//  9round
//
//  Created by EsraaGK on 11/05/2021.
//

import Foundation

protocol RegistrationFormInteractorProtocol: BaseDataRequest {
    var presenter: DataUpdater? { get set }
    func register(_ user: User)
}
class RegistrationFormInteractor: RegistrationFormInteractorProtocol {
    var presenter: DataUpdater?
    
    func getData() {
        //  NetworkManger.shared.callApi(targetType: AuthonticationTargetType.chainId)
    }
    
    func register(_ user: User) {
    }
}
