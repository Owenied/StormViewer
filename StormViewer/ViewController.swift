//
//  ViewController.swift
//  StormViewer
//
//  Created by Owen Duignan on 02/05/2017.
//  Copyright © 2017 Owen Duignan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Create an array of all the “nssl” pictures
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the list of files that are inside the app bundle
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        // Loop through the images for images beginning with "nssl"
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

