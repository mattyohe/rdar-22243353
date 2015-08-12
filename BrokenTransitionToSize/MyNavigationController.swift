//
//  MyNavigationController.swift
//  BrokenTransitionToSize
//
//  Created by Matthew Yohe on 8/11/15.
//  Copyright © 2015 WillowTree. All rights reserved.
//

import UIKit

class MyNavigationController: UINavigationController {
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        print("navigation controller's size: \(size)")
    }
}
