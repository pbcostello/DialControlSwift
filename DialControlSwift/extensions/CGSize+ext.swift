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
        get {
            return CGSize(width: width / 2.0, height: height / 2.0)
        }
    }

    var CGPoint: CGPoint {
        get {
            return CoreGraphics.CGPoint(x: width, y: height)
        }
    }
    
}
