//
//  UIViewcontrollerExtension.swift
//  9round
//
//  Created by EsraaGK on 11/05/2021.
//

import UIKit
import SwiftMessages

extension UIViewController {
     func showErrorMessage(errorMessage: String) {
        
        let view = MessageView.viewFromNib(layout: .cardView)
        view.button?.isHidden = true
        view.configureTheme(.error)
        view.configureDropShadow()
        var config = SwiftMessages.Config()
        config.presentationContext = .window(windowLevel: .statusBar)
        view.configureContent(title: "Error", body: errorMessage)
        view.layoutMarginAdditions = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        SwiftMessages.show(config: config, view: view)
    }
}
