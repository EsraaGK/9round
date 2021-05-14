//
//  RegistrationClubsViewController.swift
//  9round
//
//  Created by EsraaGK on 14/05/2021.
//

import UIKit
protocol RegistrationClubsViewProtocol: DataUpdater {
    var presenter: RegistrationClubsPresenterProtocol? {get set}
}

class RegistrationClubsViewController: UIViewController {
    var presenter: RegistrationClubsPresenterProtocol?
    var clubs = [Club]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerNIB(cell: ClubsTableViewCell.self)
        presenter?.getData()
    }

}

extension RegistrationClubsViewController: RegistrationClubsViewProtocol {
    func update<T>(with data: T) {
        if let temp = data as? [Club] {
            clubs.append(contentsOf: temp)
            tableView.reloadData()
        }
    }
    
    func showError(with error: String) {
        showErrorMessage(errorMessage: error)
    }
}

extension RegistrationClubsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.backToRegistrationForm(clubs[indexPath.row].id)
    }
}

extension RegistrationClubsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        clubs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeue() as ClubsTableViewCell //else { return UITableViewCell() }
        cell.configure(with: clubs[indexPath.row])
        return cell
    }
    
}
