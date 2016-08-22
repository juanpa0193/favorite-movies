//
//  Movie.swift
//  favoritemovies
//
//  Created by JuanPa Villa on 7/23/16.
//  Copyright © 2016 JuanPa Villa. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {
    
    
    func saveMovieImage(image: UIImage) {
        
        let imageData = UIImagePNGRepresentation(image)
        self.image = imageData
        
    }
    
    
    func getImage() -> UIImage {
        
        let image = UIImage(data: self.image!)
        return image!
        
    }


}
