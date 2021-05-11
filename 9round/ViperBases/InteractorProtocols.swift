//
//  InteractorProtocols.swift
//  9round
//
//  Created by EsraaGK on 11/05/2021.
//

import UIKit


protocol BaseDataRequest {
    func getData()
}

protocol BaseListRequest: BaseDataRequest {
    func loadMoreData(_ page: Int)
    func refresh()
}

protocol DataUpdater {
    func update<T>(with data: T)
    func showError(with error: String)
}

//protocol ListUpdater: DataUpdater {
//    func append(_ data: Codable)
//}
//       /*  */

//typealias viewController = BaseView & UIViewController
protocol Router {
   var view: UIViewController? {get set}
   static func start() -> UIViewController?
}
//
//protocol BaseView: DataUpdater {
//    var presenter: BaseDataRequest? {get set}
//}
//
//protocol BaseListView: DataUpdater {
//    var presenter: BaseListRequest? {get set}
//
//}
//
//protocol BaseInteractor: BaseDataRequest {
//    var presenter: DataUpdater? {get set}
//}

//
//protocol BaseDataPresenter: BaseDataRequest, DataUpdater {
//  //  var router: Router? {get set}
//    var interactor: BaseDataRequest? {get set}
//    var view: BaseView? {get set}
//}

//protocol BaseListPresenter: BaseListRequest, DataUpdater {
//    var router: Router? {get set}
//    var interactor: BaseListRequest? {get set}
//    var view: BaseListView {get set}
//}
