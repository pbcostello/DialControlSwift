//
//  CGFloat+ext.swift
//  Radial0
//
//  Created by Patrick Costello on 8/1/22.
//

import Foundation
import UIKit

extension CGFloat {
    var radians: CGFloat { //or GLKMathDegreesToRadians
        //returns self converted from degrees to radians
        return self * (.pi / 180.0)
    }
    
    var degrees: CGFloat { //or GLKMathRadiansToDegrees
        //returns self converted from radians to degrees
        return self * (180.0 / .pi)
    }
    
    static let pi2: CGFloat = .pi * 2
    
    var rotationTransform: CGAffineTransform {
        return CGAffineTransform (rotationAngle: self)
    }
    
    var degreesString: String {
        return String(format: "%.2f°", self.degrees)
    }
}


