//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift

final class ChannelDetailPresenter: PresenterInterface {
    var router: ChannelDetailRouterPresenterInterface!
    var interactor: ChannelDetailInteractorPresenterInterface!

    weak var viewModel: ChannelDetailViewModel!

    private let disposeBag = DisposeBag()
}

extension ChannelDetailPresenter: ChannelDetailPresenterRouterInterface {}

extension ChannelDetailPresenter: ChannelDetailPresenterInteractorInterface {}

extension ChannelDetailPresenter: ChannelDetailPresenterViewInterface {
    func getDetail(id: Int) {
        self.viewModel.state = .loading
        self.interactor.getDetail(id: id)
            .subscribe(onSuccess: { [weak self] item in
                if let channel = item.first {
                    self?.viewModel.item = channel
                    self?.viewModel.state = .success
                }
                }, onError: { [weak self] error in
                    print(error)
                    self?.viewModel.state = .failed
            })
            .disposed(by: disposeBag)
    }
    
    func back() {
        router.back()
    }
}
