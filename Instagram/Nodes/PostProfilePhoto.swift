//
//  PostProfilePhoto.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation
import AsyncDisplayKit

class PostProfilePhoto:ASImageNode {
    override init() {
        super.init()
        style.preferredSize = CGSize(width: 36, height: 36)
        cornerRadius = 18
        image = UIImage(named: "mark")
        
    }
}
