//
//  HeroViewController.swift
//  Task1
//
//  Created by Adilzhan Akhayev on 2/14/20.
//  Copyright © 2020 Adilzhan Akhayev. All rights reserved.
//

import UIKit

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}

class HeroViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    @IBOutlet weak var Attack: UILabel!
    
    @IBOutlet weak var type: UILabel!
    
    @IBOutlet weak var legs: UILabel!
    
    
    @IBOutlet weak var health: UILabel!
    
    
    
    
    
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var attributeLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var legsLbl: UILabel!
    @IBOutlet weak var healthLbl: UILabel!
    
    var hero:HeroStats?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = hero?.localized_name
        attributeLbl.text = hero?.primary_attr
        attackLbl.text = hero?.attack_type
        legsLbl.text = "\((hero?.legs)!)"
        healthLbl.text = "\((hero?.base_health)!)"
        Attack.text = "Pimary attribut:"
        type.text = "Attack type:"
        legs.text = "legs: "
        health.text = "Base health:"
        
        let urlString = "https://api.opendota.com" + (hero?.img)!
        let url = URL(string: urlString)
        //imageView.downloadedFrom(url: url!)
        imageView.downloaded(from: url!)
    }
    
}
