//
//  jossy_frameworkTests.swift
//  jossy.frameworkTests
//
//  Created by Joss Manger on 5/2/19.
//  Copyright © 2019 Joss Manger. All rights reserved.
//

import XCTest
@testable import jossy

class jossyRadiansTests: XCTestCase {

    let degrees:[Float] = [
        90,
        120,
        360
    ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRadians() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        for degree in degrees{
            
            let calculated = {
               return degree * (.pi / 180)
            }()
            
            XCTAssert(calculated == degreesToRadians(degrees: degree), "the calculation did not match in value or type")
            
        }
        
    }
    
    func testDegrees() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        for degree in degrees{
            
            let calculatedRadians = {
                return degree * (.pi / 180)
            }()
            
            let calculatedDegrees = radiansToDegrees(radians: calculatedRadians)

            XCTAssert(calculatedDegrees.rounded() == degree, "the calculation did not match in value or type")
            
        }
        
    }


//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
