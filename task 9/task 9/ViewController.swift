//
//  ViewController.swift
//  task 9
//
//  Created by Adilzhan Akhayev on 4/10/20.
//  Copyright © 2020 Adilzhan Akhayev. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.kaspi.kz")
        let URLrequest = URLRequest(url: url!)
        self.webView.load(URLrequest)
        // Do any additional setup after loading the view.
    }


}

