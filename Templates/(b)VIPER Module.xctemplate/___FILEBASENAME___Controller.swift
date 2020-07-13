//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import SwiftUI

final class ___VARIABLE_ModuleName___Controller: UIHostingController<___VARIABLE_ModuleName___View>, Coordinatable {

    static func newInstance(view: ___VARIABLE_ModuleName___View) -> ___VARIABLE_ModuleName___Controller {
        return ___VARIABLE_ModuleName___Controller(rootView: view)
    }

    var parentCoordinator: Coordinator?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = "___VARIABLE_ModuleName___"
    }
}
