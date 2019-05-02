//
//  UIColors.swift
//  jossyTests
//
//  Created by Joss Manger on 5/2/19.
//  Copyright © 2019 Joss Manger. All rights reserved.
//

import XCTest
import jossy

class UIColors: XCTestCase {

    
    let testColors:[UIColor:String] = [
        .red:"#FF0000",
        .green:"#00FF00",
        .blue:"#0000FF",
        .cyan:"#00FFFF",
        .yellow:"#FFFF00",
        .magenta:"#FF00FF",
        .black:"#000000",
        .white:"#FFFFFF"
    ]
    
    let failcase:UIColor = .black
    let failstring = "fail"
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testColorDecoding() {
        
        for (color,str) in testColors{
            let decodedColor = UIColor.hex(with: str)
            print(decodedColor, color, decodedColor == color)
            XCTAssert(color == decodedColor, "color did not decode correctly \(color) \(str)")
        }
        
        
    }

    func testDecodeFail(){
        
        XCTAssert(failcase == UIColor.hex(with: failstring), "Failstring dit not return black")
        
    }
    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
