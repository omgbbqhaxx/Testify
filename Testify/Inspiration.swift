//
//  Inspiration.swift
//  RWDevCon
//
//  Created by Mic Pringle on 02/03/2015.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import UIKit

class Inspiration: Session {
  
  class func allInspirations() -> [Inspiration] {
    var inspirations = [Inspiration]()
    
    let products = [["Title": "Kahvelerrr", "Background": "kahve"],["Title": "Pizzalar", "Background": "pizzalar"],["Title": "Salatalar", "Background": "salatalar"],["Title": "Tatlılar", "Background": "tatli"]]
    


        for dictionary in products {
          let inspiration = Inspiration(dictionary: dictionary as NSDictionary)
            print(inspiration.title)
            print(inspiration.backgroundImage)
         
          inspirations.append(inspiration)
        }
    
    
    
    return inspirations
  }
  
}
