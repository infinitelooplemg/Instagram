//
//  PostFooterToolbarButton.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation
import AsyncDisplayKit



class PostToolbarButton:ASImageNode {
    init(action:PostToolbarAction) {
        super.init()
        style.preferredSize = CGSize(width: 24, height: 24)
        contentMode = .scaleAspectFit
        image = action.icon
    }
}
