//
//  ListInteractorTests.swift
//  Takeaway
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import XCTest
@testable import Takeaway

class ListInteractorTests: XCTestCase {
    
    // MARK: - Parameters & Constants.
    
    // MARK: - Test vatiables.
    
    var sut: ListInteractor!
    
    
    // MARK: - Set up and tear down.
    
    override func setUp() {
        super.setUp()
        
        createSut()
    }
    
    func createSut() {
        sut = ListInteractor(takeawayGatway: TakeawayFactory())
    }
    
    override func tearDown() {
        releaseSut()
        
        super.tearDown()
    }
    
    func releaseSut() {
        sut = nil
    }
    
    // MARK: - Basic test.
    
    func testSutIsntNil() {
        XCTAssertNotNil(sut, "Sut must not be nil.")
    }
    
    // MARK: Interactor logic
    
    func testListRestaurants() {
        let asyncExpectation = expectation(description: "list restaurants")
        sut.gateway?.listRestaurants(completionHandler: { restaurants in
            XCTAssertNotNil(restaurants)
            XCTAssertEqual(restaurants.count, 19)
            let firstRestaurant = restaurants.first!
            XCTAssertEqual(firstRestaurant.name, "Tanoshii Sushi")
            XCTAssertEqual(firstRestaurant.status, "open")
            XCTAssertEqual(firstRestaurant.sortingValues.newest, 96.0)
            let secondRestaurant = restaurants[1]
            XCTAssertEqual(secondRestaurant.name, "Tandoori Express")
            XCTAssertEqual(secondRestaurant.status, "closed")
            XCTAssertEqual(secondRestaurant.sortingValues.newest, 266.0)
            
            asyncExpectation.fulfill()
            
        }, failure: { (error) in
            
        })
        waitForExpectations(timeout: 20) { (error) in
            
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
            
        }
    }
}
