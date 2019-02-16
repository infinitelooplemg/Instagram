//
//  PostFooter.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation
import AsyncDisplayKit


class PostFooter:ASDisplayNode {
    
    var toolbar:PostFooterToolbar!
    
    override init() {
        super.init()
        automaticallyManagesSubnodes = true
        initializeSubnodes()
    }
    
    func initializeSubnodes(){
        toolbar = PostFooterToolbar()
       
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let verticalStack = ASStackLayoutSpec.vertical()
        verticalStack.children = [toolbar]
        
        let insets = UIEdgeInsets(top: 10, left: 16, bottom: 8, right: 16)
        let insetSpecs = ASInsetLayoutSpec(insets: insets, child: verticalStack)
        return insetSpecs
    }
}

