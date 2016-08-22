//
//  MovieCell.swift
//  favoritemovies
//
//  Created by JuanPa Villa on 7/21/16.
//  Copyright © 2016 JuanPa Villa. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellDesc: UILabel!
    @IBOutlet weak var cellURL: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()

        cellImage.layer.cornerRadius = 4.0
        cellImage.clipsToBounds = true
    
    
    }
    
    
    func configureCell(movie: Movie) {
        
        self.cellImage.image = movie.getImage()
        self.cellTitle.text = movie.movieTitle
        self.cellDesc.text = movie.movieDescription
        self.cellURL.text = movie.imdbURL
    }
    
    
    /* 
     
     
     func saveMovieImage(image: UIImage) {
     
     let imageData = UIImagePNGRepresentation(image)
     self.image = imageData
     
     }
     
     
     func getImage() -> UIImage {
     
     let image = UIImage(data: self.image!)
     return image!
     
     }
 
   */
    



}
