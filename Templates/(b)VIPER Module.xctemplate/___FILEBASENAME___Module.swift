//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift

// MARK: - Router
protocol ___VARIABLE_ModuleName___RouterPresenterInterface: RouterPresenterInterface {}

// MARK: - Presenter
protocol ___VARIABLE_ModuleName___PresenterRouterInterface: PresenterRouterInterface {}
protocol ___VARIABLE_ModuleName___PresenterInteractorInterface: PresenterInteractorInterface {}
protocol ___VARIABLE_ModuleName___PresenterViewInterface: PresenterViewInterface {}

// MARK: - Interactor
protocol ___VARIABLE_ModuleName___InteractorPresenterInterface: InteractorPresenterInterface {}

final class ___VARIABLE_ModuleName___Module: ModuleInterface {

    typealias View = ___VARIABLE_ModuleName___View
    typealias Presenter = ___VARIABLE_ModuleName___Presenter
    typealias Router = ___VARIABLE_ModuleName___Router
    typealias Interactor = ___VARIABLE_ModuleName___Interactor

    static func build() -> Coordinatable {
        let presenter = Presenter()
        let interactor = Interactor()
        let router = Router()

        let viewModel = ___VARIABLE_ModuleName___ViewModel()
        let view = View(presenter: presenter, viewModel: viewModel)
        presenter.viewModel = viewModel

        Self.assemble(presenter: presenter, router: router, interactor: interactor)

        let viewController = ___VARIABLE_ModuleName___Controller.newInstance(view: view)
        router.viewController = viewController
        return viewController
    }
}
