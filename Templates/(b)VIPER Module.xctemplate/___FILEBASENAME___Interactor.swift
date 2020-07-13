//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift
import Moya

final class ChannelDetailInteractor: InteractorInterface {
    weak var presenter: ChannelDetailPresenterInteractorInterface!
    private let client = AyobaMoyaProvider()
}

extension ChannelDetailInteractor: ChannelDetailInteractorPresenterInterface {
    func getDetail(id: Int) -> Single<[ChannelEntity]> {
        return client.request(.getChannelDetail(id: id))
            .filterSuccessfulStatusCodes()
            .map([ChannelEntity].self)
    }
}
