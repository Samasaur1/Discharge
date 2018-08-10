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
    
    var directionsPressed: Set<Direction> = Set<Direction>()
    
    override func sceneDidLoad() {

    }
    
    override func keyDown(with event: NSEvent) {
        switch event.keyCode {
        case 13, 126:
            print("Up pressed")
            directionsPressed.insert(.up)
        case 2, 124:
            print("Right pressed")
            directionsPressed.insert(.right)
        case 1, 125:
            print("Down pressed")
            directionsPressed.insert(.down)
        case 0, 123:
            print("Left pressed")
            directionsPressed.insert(.left)
        default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    override func keyUp(with event: NSEvent) {
        switch event.keyCode {
        case 13, 126:
            print("Up released")
            directionsPressed.remove(.up)
        case 2, 124:
            print("Right released")
            directionsPressed.remove(.right)
        case 1, 125:
            print("Down released")
            directionsPressed.remove(.down)
        case 0, 123:
            print("Left released")
            directionsPressed.remove(.left)
        default:
            print("keyUp: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {

    }
}
enum Direction {
    case up
    case right
    case down
    case left
    static func normalVectorFrom(directions: Set<Direction>) -> CGVector {
        var v = CGVector.zero
        for dir in directions {
            switch dir {
            case .up:
                v.dy += 1
            case .right:
                v.dx += 1
            case .down:
                v.dy -= 1
            case.left:
                v.dx -= 1
            }
        }
        return v
    }
}
extension CGVector {
    init(from directions: Set<Direction>) {
        self = CGVector.zero
        for dir in directions {
            switch dir {
            case .up:
                dy += 1
            case .right:
                dx += 1
            case .down:
                dy -= 1
            case.left:
                dx -= 1
            }
        }
    }
}
