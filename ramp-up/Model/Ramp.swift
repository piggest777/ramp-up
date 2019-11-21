//
//  Ramp.swift
//  ramp-up
//
//  Created by Denis Rakitin on 2018-11-26.
//  Copyright © 2018 Denis Rakitin. All rights reserved.
//

import Foundation
import SceneKit

class Ramp {
    
    class func getRampForName(rampName: String) -> SCNNode{
        switch rampName {
        case "pipe":
            return Ramp.getPipe()
        case "quarter":
            return Ramp.getQuarter()
        case "pyramid":
            return Ramp.getPyramid()
        default:
            return Ramp.getPipe()
        }
    }
    
    class func getPipe() -> SCNNode {
        let obj = SCNScene(named: "art.scnassets/pipe.dae")
        let node = obj?.rootNode.childNode(withName: "pipe", recursively: true)
        node?.scale = SCNVector3Make(0.0062, 0.0062, 0.0062)
        node?.position = SCNVector3Make(-1, 0.7, -1)
        return node!
    }
    
    class func getPyramid() -> SCNNode {
        let obj = SCNScene(named: "art.scnassets/pyramid.dae")
        let node = obj?.rootNode.childNode(withName: "pyramid", recursively: true)
        node?.scale = SCNVector3Make(0.02, 0.02, 0.02)
        node?.position = SCNVector3Make(-0.95, -3, -1)

        return node!
    }
    
    class func getQuarter() -> SCNNode {
        let obj = SCNScene(named: "art.scnassets/quarter.dae")
        let node = obj?.rootNode.childNode(withName: "quarter", recursively: true)
        node?.scale = SCNVector3Make(0.03, 0.03, 0.03)
        node?.position = SCNVector3Make(-0.95, -14, -1)
        return node!
    }
    
    class func startRotation(node: SCNNode) {
         let rotate = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(0.01 * Double.pi), z: 0, duration: 0.1))
        node.runAction(rotate)
    }
    
}
