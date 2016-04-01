//
//  Inspiration.swift
//  RWDevCon
//
//  Created by Mic Pringle on 02/03/2015.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import UIKit



class Inspiration: Session {
    
    class func allInspirations(myarr foodlist:NSArray) -> [Inspiration] {
        
    var inspirations = [Inspiration]()
        


        for dictionary in foodlist {
          let inspiration = Inspiration(dictionary: dictionary as! NSDictionary)
           
         
          inspirations.append(inspiration)
        }
    
    
    
    return inspirations
  }
  
}
