//
//  ListInteractorTests.swift
//  Takeaway
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import XCTest

class ListInteractorTests: XCTestCase {
    
    // MARK: - Parameters & Constants.

    // MARK: - Test vatiables.
    
    let sut = ListInteractor!
    

    // MARK: - Set up and tear down.

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - Basic test.

    func testSutIsntNil() {
        XCTAssertNotNil(sut, "Sut must not be nil.")
    }
    
    // MARK: Interactor logic 
    
    func testListRestaurants() {
        
        let asyncExpectation = expectation(description: "list restaurants")

        sut.gateway.listRestaurants(completionHandler: {restaurants in
        
        
        }, failure: { (error) in
            
        })
        waitForExpectations(timeout: 20) { (error) in
            
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
            
        }
    }
}
