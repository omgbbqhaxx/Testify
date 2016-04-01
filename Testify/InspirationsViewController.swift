//
//  InspirationsViewController.swift
//  Testify
//
//  Created by Çağdaş Atsüren on 1.04.2016.
//  Copyright © 2016 Çağdaş Atsüren. All rights reserved.
//

import UIKit

class InspirationsViewController: UICollectionViewController {
    
        let inspirations = Inspiration.allInspirations()
        override func preferredStatusBarStyle() -> UIStatusBarStyle {
            return UIStatusBarStyle.LightContent
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            
            if let patternImage = UIImage(named: "Pattern") {
                view.backgroundColor = UIColor(patternImage: patternImage)
            }
            collectionView!.backgroundColor = UIColor.clearColor()
            collectionView!.decelerationRate = UIScrollViewDecelerationRateFast
        }
    }
    
    extension InspirationsViewController {
        
        override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
            return 1
        }
        
        override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return inspirations.count
        }
        
        override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("InspirationCell", forIndexPath: indexPath) as! InspirationCell
            cell.inspiration = inspirations[indexPath.item]
            return cell
        }
        
}