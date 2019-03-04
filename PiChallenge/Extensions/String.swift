//
//  String.swift
//  PiChallenge
//
//  Created by fresneda on 3/4/19.
//  Copyright © 2019 fresneda. All rights reserved.
//

import Foundation

extension String {
    func localizedWithComment(comment:String) -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: comment)
    }
    
    func versionTextFormated() -> String {
        if let info: Any = Bundle.main.infoDictionary!["CFBundleShortVersionString"] {
            let version = info as! String
            return "_main_version_prefix_title".localizedWithComment(comment: "version") + " \(version)"
        }
        return "-"
    }
}
