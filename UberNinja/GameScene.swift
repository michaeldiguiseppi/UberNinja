//
//  GameScene.swift
//  UberNinja
//
//  Created by Mike DiGuiseppi on 3/19/16.
//  Copyright (c) 2016 Mike DiGuiseppi. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        backgroundColor = UIColor(red: 159.0/255.0, green: 203.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        
        let ground = SKSpriteNode(color: UIColor.brownColor(), size: CGSizeMake(view.frame.size.width, 20))
        ground.position = view.center
        addChild(ground)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
