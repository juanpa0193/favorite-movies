//
//  Movie+CoreDataProperties.swift
//  favoritemovies
//
//  Created by JuanPa Villa on 7/23/16.
//  Copyright © 2016 JuanPa Villa. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var image: NSData?
    @NSManaged var movieTitle: String?
    @NSManaged var movieDescription: String?
    @NSManaged var imdbURL: String?
    @NSManaged var moviePlot: String?

}
