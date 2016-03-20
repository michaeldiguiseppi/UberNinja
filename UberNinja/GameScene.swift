//
//  GameScene.swift
//  UberNinja
//
//  Created by Mike DiGuiseppi on 3/19/16.
//  Copyright (c) 2016 Mike DiGuiseppi. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var movingGround: MDMovingGround!
    var hero: MDHero!
    var wallGenerator: MDWallGenerator!
    var isStarted = false
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        backgroundColor = UIColor(red: 159.0/255.0, green: 203.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        
        // add moving ground
        movingGround = MDMovingGround(size: CGSizeMake(view.frame.size.width, kMDGroundHeight))
        movingGround.position = CGPointMake(0, view.frame.size.height/2)
        addChild(movingGround)
        
        
        // add hero
        hero = MDHero()
        hero.position = CGPointMake(70, movingGround.position.y + movingGround.frame.size.height/2 + hero.frame.size.height/2)
        addChild(hero)
        hero.breathe()
        
        // add wall generator
        wallGenerator = MDWallGenerator(color: UIColor.clearColor(), size: view.frame.size)
        wallGenerator.position = view.center
        addChild(wallGenerator)
        
        // add start label
        let tapToStartLabel = SKLabelNode(text: "Tap to start!")
        tapToStartLabel.name = "tapToStartLabel"
        tapToStartLabel.position.x = view.center.x
        tapToStartLabel.position.y = view.center.y + 60
        tapToStartLabel.fontColor = UIColor.blackColor()
        
        
        
        addChild(tapToStartLabel)
        
    }
    
    func start() {
        isStarted = true
        
        let tapToStartLabel = childNodeWithName("tapToStartLabel")
        tapToStartLabel!.removeFromParent()
        
        hero.stop()
        hero.startRunning()
        movingGround.start()
        
        wallGenerator.startGeneratingWallsEvery(1)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        if !isStarted {
            start()
        } else {
            hero.flip()
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
