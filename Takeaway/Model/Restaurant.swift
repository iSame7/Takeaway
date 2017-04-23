//
//	Restaurant.swift
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import Foundation

struct Restaurant{

	var name : String!
	var sortingValues : SortingValue!
	var status : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String: Any]){
		name = dictionary["name"] as? String
		if let sortingValuesData = dictionary["sortingValues"] as? [String: Any]{
				sortingValues = SortingValue(fromDictionary: sortingValuesData)
			}
		status = dictionary["status"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String: Any]
	{
		var dictionary = [String: Any]()
		if name != nil{
			dictionary["name"] = name
		}
		if sortingValues != nil{
			dictionary["sortingValues"] = sortingValues.toDictionary()
		}
		if status != nil{
			dictionary["status"] = status
		}
		return dictionary
	}

}
