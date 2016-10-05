//
//  ViewController.swift
//  DialControlSwift
//
//  Created by Patrick Costello on 10/4/16.
//  Copyright © 2016 Patrick Costello. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DialUIViewProtocol {

    @IBOutlet var labels: [UILabel]!
    
    func dialUIViewMoved(dialUIView: DialUIView) {
        labels[dialUIView.tag].text = String(format:"%.2f",dialUIView.rotation)
    }

}

