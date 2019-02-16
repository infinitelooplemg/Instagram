//
//  PostHeader.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation
import AsyncDisplayKit

class PostHeader:ASDisplayNode {
    
    var profilePhoto:PostProfilePhoto!
    var userInfo:PostHeaderUserInfo!
    
    
    override init() {
        super.init()
        automaticallyManagesSubnodes = true
        initializeSubnodes()
    }
    
    func initializeSubnodes(){
        profilePhoto = PostProfilePhoto()
        userInfo = PostHeaderUserInfo()
        
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let horizontalStack = ASStackLayoutSpec.horizontal()
        horizontalStack.children = [profilePhoto,userInfo]
        horizontalStack.alignItems = .center
        
        let insets = UIEdgeInsets(top: 4, left: 16, bottom: 10, right: 16)
        let insetSpecs = ASInsetLayoutSpec(insets: insets, child: horizontalStack)
        
        return insetSpecs
    }
    
    
}

