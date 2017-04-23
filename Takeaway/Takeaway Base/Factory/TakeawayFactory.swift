//
//  FlickerFactory.swift
//  Takeaway
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import Foundation

class TakeawayFactory: TakeawayGatway {
    func listRestaurants(completionHandler: @escaping ([Restaurant]) -> Void, failure: @escaping (FileManagerError?) -> Void) {
        // get restaurants from local file.
        if let data = FileManagerUtility().getDataFromFile(fileName: "sample") {
            do {
                if let restaurantsDictionary = try JSONSerialization.jsonObject(with: data as Data, options: []) as? [String: Any] {
                    let rootClass = RootClass(fromDictionary: restaurantsDictionary)
                    completionHandler(rootClass.restaurants)
                }
            } catch {
                failure(FileManagerError.invalidFile)
            }
        }
        else {
            failure(FileManagerError.fileNotFound)
        }
    }
}
