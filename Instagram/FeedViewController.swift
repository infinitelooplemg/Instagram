//
//  FeedViewController.swift
//  Instagram
//
//  Created by FABY on 2/16/19.
//  Copyright © 2019 Grupo Lider. All rights reserved.
//

import Foundation
import  UIKit
import AsyncDisplayKit
class FeedViewController:ASViewController<ASTableNode> {
    var tableNode:ASTableNode!
    var dataSource:FeedDataSource?
    
    
    init() {
        tableNode = ASTableNode()
        dataSource = FeedDataSource()
        tableNode.dataSource = dataSource
        super.init(node: tableNode)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
        tableNode.view.separatorStyle = .none
    }
    
    func setupNavigationBar(){
        let logo = UIImage(named: "instagram")
        let imageView = UIImageView(image: logo)
        imageView.contentMode = .scaleAspectFit
        self.navigationItem.titleView = imageView
        
        let directButton = UIBarButtonItem(image: UIImage(named: "Direct"), style: .plain, target: self, action: nil)
        let cameraButton = UIBarButtonItem(image: UIImage(named: "Camera"), style: .plain, target: self, action: nil)
        
        navigationController?.navigationBar.isTranslucent = false
        
        navigationItem.leftBarButtonItem = cameraButton
        navigationItem.rightBarButtonItem = directButton
        navigationItem.leftBarButtonItem?.tintColor = .black
        navigationItem.rightBarButtonItem?.tintColor = .black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class FeedDataSource:NSObject,ASTableDataSource{
    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
        let cellNodeBlock = { () -> ASCellNode in
            let cellNode = PostCell()
            return cellNode
        }
        
        return cellNodeBlock
    }
    
}






