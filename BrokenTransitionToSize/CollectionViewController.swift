//
//  CollectionView.swift
//  BrokenTransitionToSize
//
//  Created by Matthew Yohe on 8/10/15.
//  Copyright © 2015 WillowTree. All rights reserved.
//

import UIKit

class MyCell: UICollectionViewCell {
    
}

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView!.registerClass(MyCell.self, forCellWithReuseIdentifier: "MyCell")
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("MyCell", forIndexPath: indexPath)
        cell.backgroundColor = UIColor(red: CGFloat((Double((arc4random()) % 255)/255.0)), green: CGFloat((Double((arc4random()) % 255)/255.0)), blue: CGFloat((Double((arc4random()) % 255)/255.0)), alpha: 1.0)
        return cell
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        print("CollectionViewController willTransitionToSize: \(size)")
        self.collectionView?.collectionViewLayout.invalidateLayout()
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        print("sizeForItem self.view.bounds.size \(self.view.bounds.size)")
        return CGSize(width: self.view.bounds.size.width, height: 25)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews self.view.bounds.size: \(self.view.bounds.size)")
    }
}