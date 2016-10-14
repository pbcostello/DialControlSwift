//
//  CGPoint+ext.swift
//  DialControlSwift
//
//  Created by Patrick Costello on 10/14/16.
//  Copyright © 2016 Patrick Costello. All rights reserved.
//

import UIKit

extension CGPoint {
    
    var radian: Float {
        get {
            let l = sqrt(Float(x*x)+Float(y*y))
            if l == 0 {
                return 0
            }
            
            var radian = fmodf(atan2( Float(x)/l ,Float(y)/l),Float(M_PI*2.0))
            
            if radian < 0 {
                radian += Float(M_PI*2.0)
            }
            
            if radian == -0 {
                radian = 0
            }
            return radian
        }
    }
    
    func radianToPoint(point: CGPoint) -> Float {
        //return radian from self to point
        return fmodf (CGPoint(x:point.x - x, y:point.y - y).radian, Float(M_PI*2.0))
    }

    func moveAngle(point: CGPoint, previousPoint: CGPoint) ->Float {
        //return radian difference from previousPoint to point, self = center
        var radian1 = radianToPoint(point:point)
        let radian2 = radianToPoint(point:previousPoint)
        
        if radian1 < radian2 {
            radian1 += Float(M_PI*2.0)
        }
        
        let diff = radian1-radian2
        
        if diff > Float(M_PI) {
            return -(radian2 - radian1 + Float(M_PI*2.0))
        }
        return diff
    }

    
}
