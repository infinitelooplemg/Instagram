//
//  PostHeaderUserInfo.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation
import AsyncDisplayKit


class PostHeaderUserInfo:ASDisplayNode {
    var userNameLabel:IGTextNode!
    var extraInfoLabel:IGTextNode!
    
    override init() {
        super.init()
        automaticallyManagesSubnodes = true
        initializeSubnodes()
    }
    
    func initializeSubnodes(){
        userNameLabel = IGTextNode(boldFontSize: 15, color: .black, with: "Marck Zuckerberg")
        extraInfoLabel = IGTextNode(fontSize: 13, color: .black, with: "Menlo Park")
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let verticalStack = ASStackLayoutSpec.vertical()
        verticalStack.children = [userNameLabel,extraInfoLabel]
        
        let insets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        let insetSpecs = ASInsetLayoutSpec(insets: insets, child: verticalStack)
        return insetSpecs
    }
}

