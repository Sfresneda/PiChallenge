//
//  MainPresenter.swift
//  PiChallenge
//
//  Created by fresneda on 3/4/19.
//  Copyright © 2019 fresneda. All rights reserved.
//

import Foundation
import UIKit

class MainPresenter: BasePresenter, MainPresenterContract {
    // MARK: - Vars
    var interactor: MainInteractor?
    var router: MainWireframe?
    weak var view: MainView?
    var viewModel: MainEntity?
    
}
