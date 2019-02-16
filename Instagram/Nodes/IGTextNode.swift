//
//  IGTextNode.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation

import AsyncDisplayKit

class IGTextNode:ASTextNode {
    
    fileprivate var _fontSize:Float!
    fileprivate var _color:UIColor!
    fileprivate var _text:String!
    
    init(fontSize:Float,color:UIColor,with text:String) {
        super.init()
        isLayerBacked = true
        _fontSize = fontSize
        _color = color
        _text = text
        attributedText = NSAttributedString(string: _text, attributes: [NSAttributedString.Key.foregroundColor:_color,NSAttributedString.Key.font:UIFont.systemFont(ofSize: CGFloat(_fontSize!))])
    }
    
    
    init(boldFontSize:Float,color:UIColor,with text:String) {
        super.init()
        isLayerBacked = true
        _fontSize = boldFontSize
        _color = color
        _text = text
        attributedText = NSAttributedString(string: _text, attributes: [NSAttributedString.Key.foregroundColor:_color,NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: CGFloat(_fontSize!))])
    }
    
}
