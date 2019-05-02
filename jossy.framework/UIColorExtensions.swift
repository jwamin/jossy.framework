//
//  UIColorExtensions.swift
//  jossy.framework
//
//  Created by Joss Manger on 5/2/19.
//  Copyright © 2019 Joss Manger. All rights reserved.
//

import UIKit

extension UIColor{
    
    //CSS Style hex color extension for UIColor
    //produces opaque color (1.0 alpha)
    
    public class func hex(with hexString:String) -> UIColor{
        
        if !hexString.hasPrefix("#"){
            print("no pound siGn")
            return .black
        }
        
        let workingString = hexString.replacingOccurrences(of: "#", with: "")
        var shortString:Bool = false
        
        switch workingString.count {
        case 3:
            shortString = true
        case 6:
            break;
        default:
            return .black
        }
        
        
        let DIVISOR:CGFloat = 255.0
        
        
        let (r,g,b):(CGFloat,CGFloat,CGFloat) = { [workingString,shortString] in
            
            var colorFloats = [CGFloat]()
            let indices = (shortString) ? [0,1,2] : [0,2,4]
            for index in indices{
                
                let indexLower = workingString.index(workingString.startIndex, offsetBy: index)
                let indexHigher = workingString.index(hexString.startIndex,offsetBy: (!shortString) ? index+1 : index)
                
                var substring = workingString[indexLower...indexHigher]
                substring += (shortString) ? substring : ""
                
                let cgfloat = CGFloat(Int(substring, radix: 16) ?? 0)
                colorFloats.append(cgfloat)
                
            }
            
            return (colorFloats[0],colorFloats[1],colorFloats[2])
            
            }()
        
        if (r==g && g==b){
            return UIColor(white: r/DIVISOR, alpha: 1.0)
        }
        
        return UIColor(red: r/DIVISOR, green: g/DIVISOR, blue: b/DIVISOR, alpha: 1.0)
        
    }
    
}
