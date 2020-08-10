//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import SwiftUI

final class ___VARIABLE_ModuleName___Presenter: PresenterInterface {
    var router: ___VARIABLE_ModuleName___RouterPresenterInterface!
    var interactor: ___VARIABLE_ModuleName___InteractorPresenterInterface!

    weak var viewModel: ___VARIABLE_ModuleName___ViewModel!
}

extension ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___PresenterRouterInterface {}

extension ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___PresenterInteractorInterface {}

extension ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___PresenterViewInterface {}
