//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift

// MARK: - Router
protocol ChannelDetailRouterPresenterInterface: RouterPresenterInterface {
    func back()
}

// MARK: - Presenter
protocol ChannelDetailPresenterRouterInterface: PresenterRouterInterface {}
protocol ChannelDetailPresenterInteractorInterface: PresenterInteractorInterface {}
protocol ChannelDetailPresenterViewInterface: PresenterViewInterface {
    func getDetail(id: Int)
    func back()
}

// MARK: - Interactor
protocol ChannelDetailInteractorPresenterInterface: InteractorPresenterInterface {
   func getDetail(id: Int) -> Single<[ChannelEntity]>
}

final class ChannelDetailModule: ModuleInterface {

    typealias View = ChannelDetailView
    typealias Presenter = ChannelDetailPresenter
    typealias Router = ChannelDetailRouter
    typealias Interactor = ChannelDetailInteractor

    static func build(id: Int) -> Coordinatable {
        let presenter = Presenter()
        let interactor = Interactor()
        let router = Router()

        let viewModel = ChannelDetailViewModel(id: id)
        let view = View(presenter: presenter, viewModel: viewModel)
        presenter.viewModel = viewModel

        Self.assemble(presenter: presenter, router: router, interactor: interactor)

        let viewController = ChannelDetailController.newInstance(view: view)
        router.viewController = viewController
        return viewController
    }
}
