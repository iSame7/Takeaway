//
//	SortingValue.swift
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import Foundation

struct SortingValue{

	var averageProductPrice : Int!
	var bestMatch : Float!
	var deliveryCosts : Int!
	var distance : Int!
	var minCost : Int!
	var newest : Float!
	var popularity : Double!
	var ratingAverage : Float!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		averageProductPrice = dictionary["averageProductPrice"] as? Int
		bestMatch = dictionary["bestMatch"] as? Float
		deliveryCosts = dictionary["deliveryCosts"] as? Int
		distance = dictionary["distance"] as? Int
		minCost = dictionary["minCost"] as? Int
		newest = dictionary["newest"] as? Float
		popularity = dictionary["popularity"] as? Double
		ratingAverage = dictionary["ratingAverage"] as? Float
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if averageProductPrice != nil{
			dictionary["averageProductPrice"] = averageProductPrice
		}
		if bestMatch != nil{
			dictionary["bestMatch"] = bestMatch
		}
		if deliveryCosts != nil{
			dictionary["deliveryCosts"] = deliveryCosts
		}
		if distance != nil{
			dictionary["distance"] = distance
		}
		if minCost != nil{
			dictionary["minCost"] = minCost
		}
		if newest != nil{
			dictionary["newest"] = newest
		}
		if popularity != nil{
			dictionary["popularity"] = popularity
		}
		if ratingAverage != nil{
			dictionary["ratingAverage"] = ratingAverage
		}
		return dictionary
	}

}
