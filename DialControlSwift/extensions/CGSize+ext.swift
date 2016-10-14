//
//  CGSize+ext.swift
//  DialControlSwift
//
//  Created by Patrick Costello on 10/14/16.
//  Copyright © 2016 Patrick Costello. All rights reserved.
//

import UIKit

extension CGSize {
    
    var half: CGPoint {
        get {
            return CGPoint(x: width/2.0, y: height/2.0)
        }
    }
    
}
