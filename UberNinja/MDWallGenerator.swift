//
//  MDWallGenerator.swift
//  UberNinja
//
//  Created by Mike DiGuiseppi on 3/20/16.
//  Copyright © 2016 Mike DiGuiseppi. All rights reserved.
//

import Foundation
import SpriteKit

class MDWallGenerator: SKSpriteNode {
    
    var generationTimer: NSTimer?
    var walls = [MDWall]()
    
    func startGeneratingWallsEvery(seconds: NSTimeInterval) {
        generationTimer = NSTimer.scheduledTimerWithTimeInterval(seconds, target: self, selector: "generateWall", userInfo: nil, repeats: true)
    }
    
    func stopGenerating() {
        generationTimer?.invalidate()
    }
    
    func generateWall() {
        
        var scale: CGFloat
        let rand = arc4random_uniform(2)
        
        if rand == 0 {
            scale = -1.0
        } else {
            scale = 1.0
        }
        
        let wall = MDWall()
        
        wall.position.x = size.width/2 + wall.size.width/2
        wall.position.y = scale * (kMDGroundHeight/2 + wall.size.height/2)
        walls.append(wall)
        addChild(wall)
        
    }
    
    func stopWalls() {
        stopGenerating()
        for wall in walls {
            wall.stopMoving()
        }
    }
    
}