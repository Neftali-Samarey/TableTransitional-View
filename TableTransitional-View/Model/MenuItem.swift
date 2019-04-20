//
//  MenuItem.swift
//  TableTransitional-View
//
//  Created by Neftali Samarey on 4/20/19.
//  Copyright © 2019 Neftali Samarey. All rights reserved.
//

import Foundation
import UIKit

enum SpicyLevel {
    case Mild
    case Medium
    case Hot
    case ExtraHot // Oh yeah!
}

class MenuItem {
    var itemName: String
    var itemPhoto: UIImageView
    var itemPrice: String
    var spicy: SpicyLevel
    
    // Designated initalizer
    init(itemName : String, itemPhoto: UIImageView, itemPrice: String, spicy: SpicyLevel) {
        self.itemName = itemName
        self.itemPhoto = itemPhoto
        self.itemPrice = itemPrice
        self.spicy = spicy
    }
    
    convenience init() {
        self.init()
    }
}
