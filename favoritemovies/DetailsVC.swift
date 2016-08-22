//
//  DetailsVC.swift
//  favoritemovies
//
//  Created by JuanPa Villa on 7/22/16.
//  Copyright © 2016 JuanPa Villa. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {
    
    var movie: Movie!
    
    
    @IBOutlet weak var detailsImg: UIImageView!
    @IBOutlet weak var detailsTitle: UILabel!
    @IBOutlet weak var detailsMovieDescription: UITextView!
    @IBOutlet weak var urlLinkBttn: UIButton!

    @IBOutlet weak var IMBdMoviePlot: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()


        loadDetailsInit(movie)
        
        
    }


    func loadDetailsInit(movie: Movie) {
        self.detailsImg.image = movie.getImage()
        self.detailsTitle.text = movie.movieTitle
        self.detailsMovieDescription.text = movie.movieDescription
        self.urlLinkBttn.setTitle(movie.imdbURL, forState: .Normal)
        self.IMBdMoviePlot.text = movie.moviePlot
        
        
    }
    

    
    @IBAction func urlBttnPressd(sender: AnyObject) {
        
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "WebViewSegue" {
            
            if let _ = sender as? UIButton, let url = urlLinkBttn.currentTitle where url != "", let vc = segue.destinationViewController as? WebVC {
                
                vc.url = url
                
            }
            
        }
        
    }

    

}
