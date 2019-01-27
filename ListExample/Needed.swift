//
//  Needed.swift
//  ListExample
//
//  Created by John Alexander on 27/01/2019.
//

import Foundation

class Needed {
    //MARK: Properties
    
    var name: String
    var shop: String
    var purchased: Bool
    
    //MARK Initialisation
    init(name: String, shop: String, purchased: Bool){
        self.name = name
        self.shop = shop
        self.purchased = purchased
    }
}
