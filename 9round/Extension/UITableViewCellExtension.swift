//
//  UITableViewCellExtension.swift
//  9round
//
//  Created by EsraaGK on 14/05/2021.
//

import UIKit

extension UITableViewCell {
    static var identifire: String { return String(describing: self) }
    static var nib: UINib { return UINib(nibName: self.identifire, bundle: nil) }
}
