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
        return CGSize(width: width * 0.5, height: height * 0.5)
    }

    var CGPoint: CGPoint {
        return CoreGraphics.CGPoint(x: width, y: height)
    }
    
}
