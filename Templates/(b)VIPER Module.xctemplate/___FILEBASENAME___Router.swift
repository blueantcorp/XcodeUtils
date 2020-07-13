//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ChannelDetailRouter: RouterInterface {
    weak var presenter: ChannelDetailPresenterRouterInterface!
    weak var viewController: UIViewController?
}

extension ChannelDetailRouter: ChannelDetailRouterPresenterInterface {
    func back() {
        viewController?.navigationController?.popToRootViewController(animated: true)
    }
}

