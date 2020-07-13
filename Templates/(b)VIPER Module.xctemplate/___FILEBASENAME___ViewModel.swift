//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Combine

final class ___VARIABLE_ModuleName___ViewModel: ObservableObject {

    enum ViewState {
        case loading, success, failed
    }

    @Published var state: ViewState = .loading

    @Published var name: String = "___VARIABLE_ModuleName___"
}
