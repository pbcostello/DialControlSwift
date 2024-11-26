//
//  CGRect+ext.swift
//  DialControlSwiftUI
//
//  Created by Patrick Costello on 4/20/21.
//

import CoreGraphics

extension CGRect {
    func angleDifference(point: CGPoint, previousPoint: CGPoint) -> CGFloat {
        return size.half.CGPoint.angleDifference(point: point, previousPoint: previousPoint)
    }
}

