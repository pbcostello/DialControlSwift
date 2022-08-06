//
//  CGSize+ext.swift
//  DialControlSwift
//
//  Created by Patrick Costello on 10/14/16.
//  Copyright © 2016 Patrick Costello. All rights reserved.
//

import CoreGraphics

extension CGSize {
    
    var half: CGSize {
        return self / 2.0
    }

    static func / (left: CGSize, right: CGFloat) -> CGSize {
        return CGSize(width: left.width / right, height: left.height / right)
    }
    
    var CGPoint: CGPoint {
        return CoreGraphics.CGPoint(x: width, y: height)
    }
    
}
