//
//  SecondViewController.swift
//  Tipsy
//
//  Created by Adilzhan Akhayev on 5/28/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var EndValue: Float = 0
    var split: String?
    var procent: String?

    @IBOutlet weak var EndValueLebel: UILabel!
    @IBOutlet weak var EndText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EndValueLebel.text = String(format: "%.2f",EndValue)
        EndText.text = "Split between \(split!) people, with \(procent!)% tip."

    }
    @IBAction func RecalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
