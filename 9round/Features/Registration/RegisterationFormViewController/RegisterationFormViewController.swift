//
//  RegisterationFormViewController.swift
//  9round
//
//  Created by EsraaGK on 10/05/2021.
//

import UIKit
protocol RegisterationFormViewProtocol: DataUpdater {
    var presenter: RegistrationFormPresenterProtocol? {get set}
}

class RegisterationFormViewController: UIViewController {
    var presenter: RegistrationFormPresenterProtocol?
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func chooseClub(_ sender: UITapGestureRecognizer) {
        presenter?.showClubs()
    }
    @IBAction func register(_ sender: UIButton) {
        
    }
}

extension RegisterationFormViewController: RegisterationFormViewProtocol {
    func showError(with error: String) {
        showErrorMessage(errorMessage: error)
    }
    
    
    func update<T>(with data: T) {
        if let temp = data as? User {
            user = temp
        }
    }

 
    
}
