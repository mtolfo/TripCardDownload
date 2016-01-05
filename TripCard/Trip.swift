//
//  Trip.swift
//  TripCard
//
//  Created by Michael Tolfo on 1/1/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import Foundation
import UIKit

class Trip
{
    /*
    // Without Parse
    var tripId = ""
    var city = ""
    var country = ""
    var featuredImage:UIImage?
    var price:Int = 0
    var totalDays:Int = 0
    var isLiked = false
    
    init (tripId: String, city: String, country: String, featuredImage: UIImage!, price: Int, totalDays: Int, isLiked: Bool)
    {
        self.tripId = tripId
        self.city = city
        self.country = country
        self.featuredImage = featuredImage
        self.price = price
        self.totalDays = totalDays
        self.isLiked = isLiked
        
    }
*/
    
    //With Parse
    var tripId = ""
    var city = ""
    var country = ""
    var featuredImage:PFFile?
    var price:Int = 0
    var totalDays:Int = 0
    var isLiked = false
    
    init (tripId: String, city: String, country: String, featuredImage: PFFile!, price: Int, totalDays: Int, isLiked: Bool)
    {
        self.tripId = tripId
        self.city = city
        self.country = country
        self.featuredImage = featuredImage
        self.price = price
        self.totalDays = totalDays
        self.isLiked = isLiked
        
    }
    
    //initialize the object
    init(pfObject: PFObject)
    {
        self.tripId = pfObject.objectId!
        self.city = pfObject["city"] as! String
        self.country = pfObject["country"] as! String
        self.price = pfObject["price"] as! Int
        self.totalDays = pfObject["totalDays"] as! Int
        self.featuredImage = pfObject["featuredImage"] as? PFFile
        self.isLiked = pfObject["isLiked"] as! Bool
    }
    
    // then convert the object
    func toPFObject() -> PFObject
    {
        let tripObject = PFObject(className: "Trip")
        tripObject.objectId = tripId
        tripObject["city"] = city
        tripObject["country"] = country
        tripObject["featuredImage"] = featuredImage
        tripObject["price"] = price
        tripObject["totalDays"] = totalDays
        tripObject["isLiked"] = isLiked
        
        return tripObject
        
    }

    
}
