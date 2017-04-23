//
//	RootClass.swift
//
//  Created by Sameh Mabrouk on 23/04/2017.
//  Copyright © 2017 Sameh Mabrouk. All rights reserved.
//

import Foundation

struct RootClass{

	var restaurants : [Restaurant]!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String: Any]){
		restaurants = [Restaurant]()
		if let restaurantsArray = dictionary["restaurants"] as? [[String: Any]]{
			for dic in restaurantsArray{
				let value = Restaurant(fromDictionary: dic)
				restaurants.append(value)
			}
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String: Any]
	{
		var dictionary = [String: Any]()
		if restaurants != nil{
			var dictionaryElements = [[String: Any]]()
			for restaurantsElement in restaurants {
				dictionaryElements.append(restaurantsElement.toDictionary())
			}
			dictionary["restaurants"] = dictionaryElements
		}
		return dictionary
	}

}
