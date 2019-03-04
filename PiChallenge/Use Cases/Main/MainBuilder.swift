//
//  MainBuilder.swift
//  PiChallenge
//
//  Created by fresneda on 3/4/19.
//  Copyright © 2019 fresneda. All rights reserved.
//

import UIKit

class MainBuilder {
    static func build() -> UIViewController {
        let view = MainView.init(nibName: "MainView", bundle: nil)
        let interactor = MainInteractor()
        let presenter = MainPresenter()
        let entity = MainEntity()
        let router = MainWireframe()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.interactor = interactor
        presenter.viewModel = entity
        presenter.router = router
        
        router.presenter = presenter
        router.view = view
        
        _ = view.view
        
        return view
    }
}
