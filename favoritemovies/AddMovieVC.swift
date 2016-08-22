//
//  AddMovieVC.swift
//  favoritemovies
//
//  Created by JuanPa Villa on 7/21/16.
//  Copyright © 2016 JuanPa Villa. All rights reserved.
//

import UIKit
import CoreData

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageHolder: UIImageView!
    @IBOutlet weak var addImgBttn: UIButton!
    @IBOutlet weak var titleTxtField: UITextField!
    @IBOutlet weak var descriptionTxtField: UITextField!
    @IBOutlet weak var imdbURLTxtField: UITextField!
    @IBOutlet weak var addMovieBttn: UIButton!
    @IBOutlet weak var imdbMoviePlotDesc: UITextView!
    
    var imagePicker: UIImagePickerController!
    

    override func viewDidLoad() {
        super.viewDidLoad()


        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imageHolder.layer.cornerRadius = 4.0
        imageHolder.clipsToBounds = true
        addMovieBttn.layer.cornerRadius = 4.0
        addMovieBttn.clipsToBounds = true
    
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imageHolder.image = image
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
    }

    
    
    @IBAction func addIMGBttnPressed(sender: UIButton) {
        addImgBttn.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
        
        
    }


    @IBAction func addMovieBttnPressed(sender: UIButton) {
        
        if let title = titleTxtField.text where title != "" ,let movieDesc = descriptionTxtField.text, let url = imdbURLTxtField.text,let image = imageHolder.image  {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)
            let movie = Movie(entity: entity!, insertIntoManagedObjectContext: context)
            movie.movieTitle = titleTxtField.text
            movie.movieDescription = descriptionTxtField.text
            movie.imdbURL = imdbURLTxtField.text
            movie.moviePlot = imdbMoviePlotDesc.text
            movie.saveMovieImage(imageHolder.image!)
            
            
            context.insertObject(movie)
            
            
            do {
                try context.save()
            } catch {
                print("Could not save!")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
            
            
        }
        
    }


}
