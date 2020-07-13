//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import SwiftUI

struct ChannelDetailView: ViewInterface, View {

    var presenter: ChannelDetailPresenterViewInterface!

    @SwiftUI.Environment(\.imageCache) var cache: ImageCache

    @ObservedObject
    var viewModel: ChannelDetailViewModel

    private func back() {
        presenter.back()
    }

    var body: some View {
        ZStack(alignment: .topLeading) {
            if viewModel.item != nil {
                GeometryReader { geo in
                    AsyncImage(
                        url: URL(string: self.viewModel.item?.image.url ?? "")!,
                        cache: self.cache,
                        placeholder: ActivityIndicator(shouldAnimate: true),
                        configuration: { $0.resizable() }
                    )
                        .frame(width: geo.size.width, height: 240)
                        .cornerRadius(5)
                }
            }

            VStack(alignment: .leading) {
                Button(action: back) {
                     Image(systemName: "arrow.left")
                        .padding()
                        .foregroundColor(.white)
                }
                Spacer(minLength: 130)
                Text("\(viewModel.item?.title ?? "")").foregroundColor(.white)
                Spacer(minLength: 40)
                Text("Description").foregroundColor(.secondary)
                HTMLText("<h1 style=\"font:-apple-system-body;font-size:50px;\">\(viewModel.item?.description ?? "")</h1>")
                Text("Category").foregroundColor(.secondary)
                Text("\(viewModel.item?.category ?? "")").bold()
                Spacer()
            }.padding()
        }
        .onAppear {
            self.presenter.getDetail(id: self.viewModel.id)
        }
    }
}
