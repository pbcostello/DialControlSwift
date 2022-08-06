//
//  ViewController.swift
//  DialControlSwift
//
//  Created by Patrick Costello on 10/4/16.
//  Copyright © 2016 Patrick Costello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func dialValueChanged(_ dial: DialUIView?) {
        dial?.label?.text = String(format: "%d: %.2f°",dial?.tag ?? 0, (dial?.rotation ?? 0) * 180.0 / .pi)

    }
    
}

