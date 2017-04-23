//
//  ListInteractor.swift
//  Takeaway
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import Foundation

class ListInteractor: ListInteractorInput {
 
    weak var output: BrowseInteractorOutput?
    
    // Gateway that is our abstraction for all operation of getting data.
    var gateway: TakeawayGatway?
    
    init<T: TakeawayGatway>(takeawayGatway: T) {
        gateway = takeawayGatway
    }
    
    func getRestaurantsList() {
        gateway?.listRestaurants(completionHandler: { restaurants in
            self.output?.foundRestaurants(restaurants)
        }, failure: { (error) in
            if let error = error {
                self.output?.noRestaurantsFound(error: error)
            }
        })
    }

}
