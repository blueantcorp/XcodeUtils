//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift

final class ___VARIABLE_ModuleName___Presenter: PresenterInterface {
    var router: ___VARIABLE_ModuleName___RouterPresenterInterface!
    var interactor: ___VARIABLE_ModuleName___InteractorPresenterInterface!

    weak var viewModel: ___VARIABLE_ModuleName___ViewModel!

    private let disposeBag = DisposeBag()
}

extension ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___PresenterRouterInterface {}

extension ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___PresenterInteractorInterface {}

extension ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___PresenterViewInterface {}
