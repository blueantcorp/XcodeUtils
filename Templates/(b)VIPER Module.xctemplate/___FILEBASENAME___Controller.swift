//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import SwiftUI

final class ChannelDetailController: UIHostingController<ChannelDetailView>, Coordinatable {

    static func newInstance(view: ChannelDetailView) -> ChannelDetailController {
        return ChannelDetailController(rootView: view)
    }

    var parentCoordinator: Coordinator?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
}
