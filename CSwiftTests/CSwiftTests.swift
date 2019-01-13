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

}
