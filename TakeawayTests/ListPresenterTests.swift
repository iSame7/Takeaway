//
//  ListPresenterTests.swift
//  Takeaway
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import XCTest
@testable import Takeaway

class ListPresenterTests: XCTestCase {
        
    // MARK: - Test vatiables.
    
    var sut: ListPresenter!
    var ui: ListRestaurantsViewControllerMock!

    
    // MARK: - Set up and tear down.
    
    override func setUp() {
        super.setUp()
        
        createSut()
    }
    
    func createSut() {
        ui = ListCharactersViewControllerMock()
        sut = ListPresenter()
        sut.userInterface = ui
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
    
    func testFoundRestaurants() {
        // Test
        sut.foundRestaurants(restaurants)
        
        // Verify
        XCTAssertTrue(ui.showRestaurantsWasCalled)
    }
    
    // MARK: - Stubs & Mocks.
    
    class ListRestaurantsViewControllerMock: ListViewInterface {
        
        // This variable to achieve the XCTest expect method like OCMock framework expect method.
        var showRestaurantsWasCalled = false
        
        func showRestaurants(_ restaurants: [Restaurant]) {
            showRestaurantsWasCalled = true
        }
        
        func showErrorMessage(error: Error) {
        }
    }
}
