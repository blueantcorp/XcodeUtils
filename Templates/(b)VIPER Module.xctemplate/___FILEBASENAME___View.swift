//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import SwiftUI

struct ___VARIABLE_ModuleName___View: ViewInterface, View {

    var presenter: ___VARIABLE_ModuleName___PresenterViewInterface!

    @ObservedObject
    var viewModel: ___VARIABLE_ModuleName___ViewModel

    var body: some View {
        Text("\(viewModel.name)")
    }
}
