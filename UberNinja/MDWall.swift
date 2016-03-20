//
//  MDWall.swift
//  UberNinja
//
//  Created by Mike DiGuiseppi on 3/20/16.
//  Copyright © 2016 Mike DiGuiseppi. All rights reserved.
//

import Foundation
import SpriteKit

class MDWall: SKSpriteNode {
    
    let WALL_WIDTH: CGFloat = 30.0
    let WALL_HEIGHT: CGFloat = 50.0
    let WALL_COLOR = UIColor.blackColor()
    
    override init(texture: SKTexture!, color: UIColor, size: CGSize) {
        super.init(texture: nil, color: WALL_COLOR, size: CGSizeMake(WALL_WIDTH, WALL_HEIGHT))
        
        self.startMoving()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startMoving() {
        let moveLeft = SKAction.moveByX(kDefaultXToMovePerSecond, y: 0, duration: 1)
        runAction(SKAction.repeatActionForever(moveLeft))
    }
    
    
}