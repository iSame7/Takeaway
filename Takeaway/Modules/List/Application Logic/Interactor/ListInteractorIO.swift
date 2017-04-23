//
//  ListInteractorIO.swift
//  Takeaway
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import Foundation

protocol ListInteractorInput {
    
    /**
     * Add here your methods for communication PRESENTER -> INTERACTOR
     */
    func getRestaurantsList()
}

protocol BrowseInteractorOutput: class {
    
    /**
     * Add here your methods for communication INTERACTOR -> PRESENTER
     */
    func foundRestaurants(_ photos: [Restaurant])
    
    func noRestaurantsFound(error: FileManagerError)
}
