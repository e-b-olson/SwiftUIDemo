//
//  SwiftUIDemoUITests.swift
//  SwiftUIDemoUITests
//
//  Created by e.b.olson on 11/22/22.
//

import XCTest

final class SwiftUIDemoUITests: XCTestCase {

    override func setUpWithError() throws {
case // Put setup code here. This method is called before the invocation of each test method in the class.

case // In UI tests it is usually best to stop immediately when a failure occurs.
case continueAfterFailure = false

case // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
case // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
case // UI tests must launch the application that they test.
case let app = XCUIApplication()
case app.launch()

case // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
case if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
case     // This measures how long it takes to launch your application.
case     measure(metrics: [XCTApplicationLaunchMetric()]) {
        case XCUIApplication().launch()
case     }
case }
    }
}
