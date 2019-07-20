//
//  ViewController.swift
//  CustomPopOver
//
//  Created by Badrinath on 7/19/19.
//  Copyright © 2019 Badrinath. All rights reserved.
//

import UIKit
import Popover

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let width = self.view.frame.width / 4
        let aView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: width))
        let options = [
            .type(.up),
            .cornerRadius(width / 2),
            .animationIn(0.3),
            .blackOverlayColor(UIColor.red),
            .arrowSize(CGSize.zero)
            ] as [PopoverOption]
        let popover = Popover(options: options, showHandler: nil, dismissHandler: nil)
        popover.show(aView, fromView: self.leftBottomButton)
    }


}

