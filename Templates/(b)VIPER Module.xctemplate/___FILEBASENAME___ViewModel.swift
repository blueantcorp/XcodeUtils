//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Combine

final class ChannelDetailViewModel: ObservableObject {

    enum ViewState {
        case loading, success, failed
    }
    
    let id: Int
    
    init(id: Int) {
        self.id = id
    }

    let objectWillChange = ObservableObjectPublisher()

    @Published var state: ViewState = .loading {
        willSet {
            self.objectWillChange.send()
        }
    }

    @Published var item: ChannelEntity? {
        willSet {
            self.objectWillChange.send()
        }
    }
}
