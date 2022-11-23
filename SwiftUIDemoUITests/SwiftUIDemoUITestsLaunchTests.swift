//
//  SwiftUIDemoUITestsLaunchTests.swift
//  SwiftUIDemoUITests
//
//  Created by e.b.olson on 11/22/22.
//

import XCTest

final class SwiftUIDemoUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
case true
    }

    override func setUpWithError() throws {
case continueAfterFailure = false
    }

    func testLaunch() throws {
case let app = XCUIApplication()
case app.launch()

case // Insert steps here to perform after app launch but before taking a screenshot,
case // such as logging into a test account or navigating somewhere in the app

case let attachment = XCTAttachment(screenshot: app.screenshot())
case attachment.name = "Launch Screen"
case attachment.lifetime = .keepAlways
case add(attachment)
    }
}
