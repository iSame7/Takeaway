//
//  TakeawayGatway.swift
//  Takeaway
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import Foundation

/**
 This prtocol is made to acheive the Dependency Inversion Principle - the D of SOLID.The classic way to invert a dependency is to extract a protocol. (when you see “protocol,” think “interface.”) We’ll call it the TakeawayGatway.
 To make our API service layer more ignorant about most of the app, it has to implement the gateway protocol. The prtocol act as a contract.
 Thanks to Dependency Inversion, the rest of the app can now be ignorant. It knows about the contract, but not about any class that satisfies that contract.
 Anything that implements the protocol can be plugged in. The Gateway serves as a Boundary.
 */
protocol TakeawayGatway {
    func listRestaurants(completionHandler: @escaping (_ photos: [Restaurant]) -> Void, failure: @escaping (_ error: FileManagerError?) -> Void)
}
