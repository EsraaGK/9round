//
//  File.swift
//  9round
//
//  Created by EsraaGK on 10/05/2021.
//

import UIKit

open class NiblessNavigationController: UINavigationController {
    
    // MARK: - Methods
    public init() {
        super.init(nibName: nil, bundle: nil)
        setNavigationBarDesign()
    }
    
    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        setNavigationBarDesign()
    }
    
    @available(*, unavailable,
    message: "Loading this view controller from a nib is unsupported in favor of initializer dependency injection."
    )
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    @available(*, unavailable,
    message: "Loading this view controller from a nib is unsupported in favor of initializer dependency injection."
    )
    public required init?(coder aDecoder: NSCoder) {
      fatalError("Loading this view controller from a nib is unsupported in favor of initializer dependency injection.")
    }
    
    private func setNavigationBarDesign() {
        self.navigationBar.setBackgroundImage(UIImage(),
                                              for: UIBarPosition.any,
                                              barMetrics: UIBarMetrics.default)
        self.navigationBar.shadowImage = UIImage()
       // self.navigationBar.tintColor = Asset.Colors.dmMediumJungleGreenWhite.color
        self.navigationBar.isTranslucent = true
//        self.navigationBar.titleTextAttributes = [
//            NSAttributedString.Key.foregroundColor: Asset.Colors.dmBlackWhite.color]
        }
    
//    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
//        super.traitCollectionDidChange(previousTraitCollection)
//        self.navigationBar.tintColor = Asset.Colors.dmMediumJungleGreenWhite.color
//    }
}
