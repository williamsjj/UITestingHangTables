//
//  UITestingHangTablesUITests.swift
//  UITestingHangTablesUITests
//
//  Created by Jason Williams on 10/20/16.
//  Copyright © 2016 DigiTar, Inc. All rights reserved.
//

import XCTest

class UITestingHangTablesUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHang() {
        let app = XCUIApplication();
        
        expectation(for: NSPredicate(format: "exists == 1"),
                    evaluatedWith: app.tables["OuterTableView"],
                    handler: nil);
        waitForExpectations(timeout: 5) { (error) in
            app.tables["OuterTableView"].cells.element(boundBy: 0).tap();
            
            self.expectation(for: NSPredicate(format: "exists == 1"),
                             evaluatedWith: app.tables["InnerTableView"],
                            handler: nil);
           self.waitForExpectations(timeout: 5) { (error) in
                    XCTAssertNil(error);
            }
        }
    }
    
}
