//
//  GameScene.swift
//  Discharge
//
//  Created by Sam Gauck on 8/10/18.
//  Copyright © 2018 Sam Gauck. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func sceneDidLoad() {

    }
    
    override func keyDown(with event: NSEvent) {
        switch event.keyCode {
        case 13, 126:
            print("Up pressed")
        case 2, 124:
            print("Right pressed")
        case 1, 125:
            print("Down pressed")
        case 0, 123:
            print("Left pressed")
        default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    override func keyUp(with event: NSEvent) {
        switch event.keyCode {
        case 13, 126:
            print("Up released")
        case 2, 124:
            print("Right released")
        case 1, 125:
            print("Down released")
        case 0, 123:
            print("Left released")
        default:
            print("keyUp: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {

    }
}
