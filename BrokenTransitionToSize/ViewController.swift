//
//  ViewController.swift
//  BrokenTransitionToSize
//
//  Created by Matthew Yohe on 8/10/15.
//  Copyright © 2015 WillowTree. All rights reserved
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let popPC = segue.destinationViewController.popoverPresentationController!
        popPC.delegate = self
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.FullScreen
    }

    #if BROKEN
    func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
        controller.presentedViewController.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: .Plain, target: self, action: "close")
        
        // This fails even if using a stock UINavigationController of course. I'm only using this as a demonstration to log out some size values.
        return MyNavigationController(rootViewController: controller.presentedViewController)
    }
    #endif

    func close() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

