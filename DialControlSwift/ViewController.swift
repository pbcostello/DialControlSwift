//
//  ViewController.swift
//  DialControlSwift
//
//  Created by Patrick Costello on 10/4/16.
//  Copyright © 2016 Patrick Costello. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DialUIViewProtocol {

    @IBOutlet var dials: [DialUIView] = []
    
    func dialUIViewMoved(_ dialUIView: DialUIView) {
        dialUIView.label?.text = String(format: "%.2f°", dialUIView.rotation * 180.0 / .pi)
    }
    
}

