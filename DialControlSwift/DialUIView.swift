//
//  DialUIView.swift
//  DialControlSwift
//
//  Created by Patrick Costello on 10/4/16.
//  Copyright © 2016 Patrick Costello. All rights reserved.
//

import UIKit

private let M_PIx2 = Float(M_PI*2.0)

@objc protocol DialUIViewProtocol {
    func dialUIViewMoved(dialUIView:DialUIView)
}

class DialUIView : UIView {
 
    @IBOutlet weak var background : UIImageView?
    @IBOutlet weak var delegate:AnyObject?
    var rotation: Float = 0

    func getRadian(v: CGPoint) ->Float {
        
        let l = sqrt(Float(v.x*v.x)+Float(v.y*v.y))
        if l == 0 {
            return 0
        }

        var radian = fmodf(atan2( Float(v.x)/l ,Float(v.y)/l),M_PIx2)
        
        if radian < 0 {
            radian += M_PIx2
        }
        
        if radian == -0 {
            radian = 0
        }
        return radian
    }

    func getMoveAngle(v1: CGPoint, v2: CGPoint) ->Float {
        let midPtX = frame.size.width/2.0
        let midPtY = frame.size.height/2.0
        
        let r1 = getRadian(v: CGPoint(x:v1.x - midPtX,y:v1.y - midPtY))
        
        var radian1 = fmodf (r1, M_PIx2)
        
        let r2 = getRadian(v: CGPoint(x:v2.x-midPtX,y:v2.y-midPtY))
        
        let radian2 = fmodf (r2, M_PIx2)
        if radian1 < radian2 {
            radian1 += M_PIx2
        }
        
        let diff = radian1-radian2
        
        if diff > Float(M_PI) {
            return -(radian2 - radian1 + M_PIx2)
        }
        return diff
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        rotation -= getMoveAngle(v1: touches.first!.location(in: self), v2: touches.first!.previousLocation(in: self))
        background?.transform = CGAffineTransform (rotationAngle: CGFloat(rotation))
        (delegate as? DialUIViewProtocol)?.dialUIViewMoved(dialUIView: self)
    }
    
}
