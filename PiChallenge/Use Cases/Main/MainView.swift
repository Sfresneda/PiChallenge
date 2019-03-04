//
//  MainView.swift
//  PiChallenge
//
//  Created by fresneda on 3/4/19.
//  Copyright © 2019 fresneda. All rights reserved.
//

import UIKit

class MainView: BaseView, MainViewContract {
    // MARK: - Outlets
    @IBOutlet var buttonsCollection: [UIButton]!
    @IBOutlet weak var gameButton: UIButton!
    @IBOutlet weak var scoreButton: UIButton!
    @IBOutlet weak var archivementsButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!
    
    @IBOutlet weak var backgroundLabel: UILabel!
    
    // MARK: - Vars
    var presenter: MainPresenter?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupText()
    }
    
    // MARK: - Setup
    func setupView() {
        self.buttonsCollection.forEach { (button) in
            button.roundedButton()
        }
        self.gameButton.accessibilityLabel = AccessibilityLabel.Main.gameButton.rawValue
        self.scoreButton.accessibilityLabel = AccessibilityLabel.Main.scoreButton.rawValue
        self.archivementsButton.accessibilityLabel = AccessibilityLabel.Main.scoreButton.rawValue
        self.versionLabel.accessibilityLabel = AccessibilityLabel.Main.versionLabel.rawValue
    }
    func setupText() {
        self.scoreButton.setTitle("_main_score_button_title".localizedWithComment(comment: "score button"), for: .normal)
        self.gameButton.setTitle("_main_game_button_title".localizedWithComment(comment: "game button"), for: .normal)
        self.archivementsButton.setTitle("_main_archivements_button_title".localizedWithComment(comment: " archivement button"), for: .normal)
        
        self.titleLabel.text = "_main_title".localizedWithComment(comment: "title view")
        self.versionLabel.text = String().versionTextFormated()
    }
    
    // MARK: - Actions
    
    // MARK: - Helper
    
    // MARK: - Contract
    func applyTheme() { }
    
    // MARK: - Delegates
}
