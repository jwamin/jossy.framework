//
//  Radians.swift
//  jossy.framework
//
//  Created by Joss Manger on 5/2/19.
//  Copyright © 2019 Joss Manger. All rights reserved.
//

import Foundation

public func degreesToRadians<Number:FloatingPoint>(degrees:Number) -> Number{
    return degrees * (.pi/180)
}

public func radiansToDegrees<Number:FloatingPoint>(radians:Number) -> Number{
    return radians / (.pi/180)//degrees * (.pi/180)
}
