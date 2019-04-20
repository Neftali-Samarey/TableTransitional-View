//
//  UIColorExtensions.swift
//
//  Created by Mihails Tumkins on 10/02/15.
//

import UIKit

extension UIColor {
    
    convenience init(r: Int, g:Int , b:Int) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1.0)
    }

    class func spanishYellow()->UIColor {
        return UIColor(r: 255, g: 195, b: 18)
    }
    
   

}
