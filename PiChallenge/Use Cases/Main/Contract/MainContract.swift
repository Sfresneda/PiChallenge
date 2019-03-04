//
//  MainContract.swift
//  PiChallenge
//
//  Created by fresneda on 3/4/19.
//  Copyright © 2019 fresneda. All rights reserved.
//

import Foundation

protocol MainWireframeContract {
    var presenter: MainPresenter? { get set }
    var view: MainView? { get set }
}
protocol MainInteractorContract {
    var presenter: MainPresenter? { get set }
}
protocol MainPresenterContract {
    var interactor: MainInteractor? { get set }
    var router: MainWireframe? { get set }
    var view: MainView? { get set }
    var viewModel: MainEntity? { get set }
}
protocol MainViewContract {
    var presenter: MainPresenter? { get set }
    
    func applyTheme()
}
