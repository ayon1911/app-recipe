//
//  CreatRecipeVC.swift
//  app-recepiec-withCoreData
//
//  Created by Khaled Rahman Ayon on 03/07/16.
//  Copyright © 2016 iosApp. All rights reserved.
//

import UIKit
import CoreData

class CreatRecipeVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var recipeTitle: UITextField!
    @IBOutlet weak var recipeIngredients: UITextField!
    @IBOutlet weak var recipeDescription: UITextField!
    @IBOutlet weak var recipeImg: UIImageView!
    @IBOutlet weak var addRecipeBtn: UIButton!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        recipeImg.layer.cornerRadius = 2.0
        recipeImg.clipsToBounds = true
        
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        recipeImg.image = image
    }
    
    @IBAction func addImage(sender: AnyObject!){
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func creatRecepie(sender: AnyObject!){
        
        if let title = recipeTitle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Recepies", inManagedObjectContext: context)!
            let recipe = Recepies(entity: entity, insertIntoManagedObjectContext: context)
            
            recipe.title = title
            recipe.ingredients = recipeIngredients.text
            recipe.steps = recipeDescription.text
            recipe.setRecipeImage(recipeImg.image!)
            
            context.insertObject(recipe)
            
            do {
                
                try context.save()
            }catch {
                
                print("Could not save SORRYY")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }


}








