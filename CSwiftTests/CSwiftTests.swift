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

    func testCDefineString() {
        XCTAssertEqual(DOG_NAME, "fido")
    }

    func testCStructColor() {
        let color = Color(r: 0.3, g: 0.4, b: 0.5)
        XCTAssertEqual(color.g, 0.4)
    }

    func testCStructHouse() {
        // https://stackoverflow.com/questions/30042494/swift-convert-string-to-unsafemutablepointerint8
        let castleAsCString = ("castle" as NSString).utf8String
        let castleAsUnsafeMutablePointer = UnsafeMutablePointer<Int8>(mutating: castleAsCString)

        let house = House(num_floors: 3,
                          price: 1.57,
                          name: castleAsUnsafeMutablePointer,
                          is_big: false)

        XCTAssertEqual(house.num_floors, 3)
        XCTAssertEqual(house.price, 1.57, accuracy: 0.001)
        XCTAssertEqual(house.name, castleAsUnsafeMutablePointer)
        XCTAssertFalse(house.is_big)
    }

    func testAddTwo() {
        // "Swift imports any function declared in a C header as a Swift global function. "
        // https://developer.apple.com/documentation/swift/imported_c_and_objective-c_apis/using_imported_c_functions_in_swift
        XCTAssertEqual(add_two(-15), -13)
        XCTAssertEqual(add_two(38), 40)
    }

}
