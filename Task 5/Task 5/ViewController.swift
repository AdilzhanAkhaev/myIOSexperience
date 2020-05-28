//
//  ViewController.swift
//  Task 5
//
//  Created by Adilzhan Akhayev on 3/27/20.
//  Copyright © 2020 Adilzhan Akhayev. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBAction func aclist(_ sender: Any) {
    
    }
    func aza (){
        self.labelMessage.text = "Okay"
    }
  
    @IBSegueAction func adik(_ coder: NSCoder) -> ViewController? {
        
        return ViewController(coder: coder)
    }
    @IBOutlet weak var labelMessage: UILabel!
    @IBAction func buttonPopup(_ sender: UIButton) {
        showInputDialog()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func showInputDialog() {
        //Creating UIAlertController and
        //Setting title and message for the alert dialog
        let alertController = UIAlertController(title: "Message", message: "Enter your name and message", preferredStyle: .alert)
        
        //the confirm action taking the inputs
        let confirmAction = UIAlertAction(title: "Enter", style: .default) { (_) in
            
            //getting the input values from user
            let name = alertController.textFields?[0].text
            let email = alertController.textFields?[1].text
        
            self.labelMessage.text =  "Name: " + name! + "\n" + "Text: " + email!
            
        }
        
        //the cancel action doing nothing
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        //adding textfields to our dialog box
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Name"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "Enter Message"
        }
        
        //adding the action to dialogbox
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        //finally presenting the dialog box
        self.present(alertController, animated: true, completion: nil)
    }



}


