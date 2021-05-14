//
//  UITableViewExtensions.swift
//  9round
//
//  Created by EsraaGK on 14/05/2021.
//

import UIKit

extension UITableView {
    func registerNIB<T: UITableViewCell>(cell: T.Type) {
        let identifier = String(describing: cell.self)
        self.register(
            UINib(nibName: identifier, bundle: nil),
            forCellReuseIdentifier: identifier
        )
    }
    
    func dequeue<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        if let dequeuedCell = self.dequeueReusableCell(withIdentifier: identifier) as? T {
            return dequeuedCell
        }
        fatalError("could not deque cell")
    }
}
extension UITableView {
    func reloadData(completion:@escaping () -> Void) {
        UIView.animate(withDuration: 0, animations: { self.reloadData() }, completion: { _ in completion() })
    }
}
