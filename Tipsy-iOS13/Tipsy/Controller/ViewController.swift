//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstProcent: UIButton!
    @IBOutlet weak var SecondProcent: UIButton!
    @IBOutlet weak var ThirdProcent: UIButton!
    @IBOutlet weak var SplitLebel: UILabel!
    @IBOutlet weak var TextFiller: UITextField!
    var brain = CalcullatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TextFiller.delegate = self
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        brain.cost = ((TextFiller.text ?? "0.0")  as NSString).floatValue
        TextFiller.resignFirstResponder()
    }
    @IBAction func ThreeBotton(_ sender: UIButton) {
        brain.procent = Float(sender.tag)
        switch sender.tag {
        case 0:
            FirstProcent.isSelected = true
            SecondProcent.isSelected = false
            ThirdProcent.isSelected = false
        case 10:
            FirstProcent.isSelected = false
            SecondProcent.isSelected = true
            ThirdProcent.isSelected = false
        case 20:
            FirstProcent.isSelected = false
            SecondProcent.isSelected = false
            ThirdProcent.isSelected = true
        default:
            FirstProcent.isSelected = false
            SecondProcent.isSelected = false
            ThirdProcent.isSelected = false
        }
    }
    @IBAction func SplitButton(_ sender: UIStepper) {
        brain.split = Float(sender.value)
        SplitLebel.text = String(Int(sender.value))
        SplitLebel.text = brain.getSplitValue()
        

        
    }
    @IBAction func Calculatte(_ sender: UIButton) {
        print(brain.getEndValue())
        self.performSegue(withIdentifier: "goSecondStoryBoard", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ){
        if segue.identifier == "goSecondStoryBoard"{
            let SecondVC = segue.destination as! SecondViewController
            SecondVC.EndValue = brain.getEndValue()
            SecondVC.procent = brain.getProcent()
            SecondVC.split =  brain.getSplitValue()
            
            
        }
        
    }
    
}
/*extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        TextFiller.resignFirstResponder()
        return true
    }
}*/

