//
//  CSwiftTests.swift
//  CSwiftTests
//
//  Created by Steve Baker on 1/13/19.
//  Copyright © 2019 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import CSwift

class ExampleTests: XCTestCase {

    func testCDefineTrue() {
        // Cannot convert value of type Int32 to expected argument type Bool
        //XCTAssertTrue(HAPPY)
        
        XCTAssertEqual(HAPPY, 1)
    }

    func testCDefineInt() {
        XCTAssertEqual(NEGATIVE_THREE, -3)
        XCTAssertEqual(FIVE, 5)
        XCTAssertTrue(FIVE is Int32)
        XCTAssertEqual(FIVE.bitWidth, 32)
    }

    func testCDefineDouble() {
        XCTAssertEqual(FIVE_PT_NINE, 5.9)
        XCTAssertTrue(FIVE_PT_NINE is Double)
    }

}
