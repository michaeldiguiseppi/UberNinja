//
//  MDMovingGround.swift
//  UberNinja
//
//  Created by Mike DiGuiseppi on 3/19/16.
//  Copyright © 2016 Mike DiGuiseppi. All rights reserved.
//

import Foundation
import SpriteKit

class MDMovingGround: SKSpriteNode {
    
    let NUMBER_OF_SEGMENTS = 20
    let COLOR_ONE = UIColor(red: 80.0/255.0, green: 148.0/255.0, blue: 87.0/255.0, alpha: 1.0)
    let COLOR_TWO = UIColor(red: 120.0/255.0, green: 195.0/255.0, blue: 118.0/255.0, alpha: 1.0)
    
    init(size: CGSize) {
        super.init(texture: nil, color: UIColor.brownColor(), size: CGSizeMake(size.width/2, size.height))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
