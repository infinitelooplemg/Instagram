//
//  PostFooterToolbar.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation
import AsyncDisplayKit


class PostFooterToolbar:ASDisplayNode {
    
    var commentButon:PostToolbarButton!
    var likeButton:PostToolbarButton!
    var sendButton:PostToolbarButton!
    
    override init() {
        super.init()
        automaticallyManagesSubnodes = true
        initializeSubnodes()
    }
    
    func initializeSubnodes(){
        commentButon = PostToolbarButton(action: .comment)
        likeButton = PostToolbarButton(action: .like)
        sendButton = PostToolbarButton(action: .send)
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let buttonsStack = ASStackLayoutSpec.horizontal()
        buttonsStack.children = [likeButton,commentButon,sendButton]
        buttonsStack.alignItems = .center
        buttonsStack.spacing = 17
        
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let insetSpecs = ASInsetLayoutSpec(insets: insets, child: buttonsStack)
        return insetSpecs
    }
}

