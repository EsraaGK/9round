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
    
    @IBOutlet weak var clubIdLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func chooseClub(_ sender: UITapGestureRecognizer) {
        presenter?.showClubs()
    }
    
    @IBAction func register(_ sender: UIButton) {
        user.firstName = firstNameTextField.text ?? ""
        user.lastName = lastNameTextField.text  ?? ""
        user.email = emailTextField.text ?? ""
        presenter?.register(user)
    }
}

extension RegisterationFormViewController: RegisterationFormViewProtocol {
    func showError(with error: String) {
        showErrorMessage(errorMessage: error)
    }
    
    
    func update<T>(with data: T) {
    }
}

extension RegisterationFormViewController: RedistrationClubsDelegate {
    func didchoose(chainId: Int?) {
        guard let id = chainId else { return }
        clubIdLabel.text = "Club id: \(id)"
        user.storeId = chainId
    }
}
