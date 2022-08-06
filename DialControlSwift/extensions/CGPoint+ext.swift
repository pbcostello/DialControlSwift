//
//  CGPoint+ext.swift
//  DialControlSwift
//
//  Created by Patrick Costello on 10/14/16.
//  Copyright © 2016 Patrick Costello. All rights reserved.
//

import CoreGraphics
import simd

extension CGPoint {
    
    var radian: CGFloat {
        let len: CGFloat = length
        return len == 0 ? 0 : fmod(atan2(x / len, y / len), .pi * 2.0)
    }
    
    var length: CGFloat {
        return simd_length(SIMD2<Double>(x, y))
    }
    
    func radianToPoint(point: CGPoint) -> CGFloat {
        //return radian from self to point
        return fmod ((point - self).radian, .pi * 2.0)
    }
    
    static func - (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x - right.x, y: left.y - right.x)
    }
    
    func moveAngle(point: CGPoint, previousPoint: CGPoint) -> CGFloat {
        //return radian difference from previousPoint to point, self = center
        
        var radian1: CGFloat = radianToPoint(point: point)
        let radian2: CGFloat = radianToPoint(point: previousPoint)
        
        if radian1 < radian2 {
            radian1 += .pi * 2.0
        }
        
        let diff: CGFloat = radian1 - radian2
        return diff > .pi ? -(radian2 - radian1 + (.pi * 2.0)) : diff
    }

}
