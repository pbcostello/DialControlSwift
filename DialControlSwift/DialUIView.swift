//
//  DialUIView.swift
//  DialControlSwift
//
//  Created by Patrick Costello on 10/4/16.
//  Copyright © 2016 Patrick Costello. All rights reserved.
//

import UIKit

@objc protocol DialUIViewProtocol {
    func dialUIViewMoved(dialUIView:DialUIView)
}

class DialUIView : UIView {
 
    @IBOutlet weak var background : UIImageView?
    @IBOutlet weak var delegate:AnyObject?
    var rotation: Float = 0 //(radians)
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        rotation -= frame.size.half.moveAngle(point: touches.first!.location(in: self), previousPoint: touches.first!.previousLocation(in: self))
        background?.transform = CGAffineTransform (rotationAngle: CGFloat(rotation))
        (delegate as? DialUIViewProtocol)?.dialUIViewMoved(dialUIView: self)
    }
    
}



