//
//  ToolbarActions.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation
import UIKit


enum PostToolbarAction:Int  {
    case comment = 1
    case like = 2
    case send = 3
    case collect = 4
    
    var icon:(UIImage?) {
        switch self {
        case .comment:
            return UIImage(named: "Comment")
        case .like :
            return UIImage(named: "Like")
        case .send :
            return UIImage(named: "Send")
        case .collect:
            return UIImage(named: "Colledt")
        }
    }
}
