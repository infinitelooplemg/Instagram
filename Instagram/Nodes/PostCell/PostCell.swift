//
//  PostCell.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation
import AsyncDisplayKit

class PostCell:ASCellNode {
    
    var header:PostHeader!
    var photo:ASImageNode!
    var footer:PostFooter!
    
    override init() {
        super.init()
        automaticallyManagesSubnodes = true
        selectionStyle = .none
        initializeSubnodes()
    }
    
    func initializeSubnodes() {
        header = PostHeader()
        photo = ASImageNode()
        photo.image = UIImage(named: "imagepost")
        footer = PostFooter()
        
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let postStack = ASStackLayoutSpec.vertical()
        postStack.children = [header,photo,footer]
        
        let insets = UIEdgeInsets(top: 4, left: 0, bottom: 4, right: 0)
        let insetSpecs = ASInsetLayoutSpec(insets: insets, child: postStack)
        
        return insetSpecs
    }
    
    
}
