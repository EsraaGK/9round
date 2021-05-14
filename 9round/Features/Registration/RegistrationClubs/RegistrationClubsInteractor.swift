//
//  RegistrationClubsInteractor.swift
//  9round
//
//  Created by EsraaGK on 14/05/2021.
//

import Foundation
protocol RegistrationClubsInteractorProtocol: BaseDataRequest {
    var presenter: DataUpdater? { get set }
}

class RegistrationClubsInteractor: RegistrationClubsInteractorProtocol {
    var presenter: DataUpdater?
    
    func getData() {
        
        NetworkManger.shared.callApi(targetType: AuthonticationTargetType.getClubsChainId)
            .done {[weak self] (clubs: [Club]) in
                self?.presenter?.update(with: clubs)
            }.catch { [weak self] in
                self?.presenter?.showError(with: $0.localizedDescription)
            }
    }
}
