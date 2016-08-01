//
//  ViewController.swift
//  HelloWorld
//
//  Created by Joel Reeves on 8/1/16.
//  Copyright © 2016 Bromance Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var background: UIImageView!
    @IBOutlet var titleImage: UIImageView!
    @IBOutlet var welcomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func welcomePressed(_ sender: UIButton) {
        background.isHidden = false
        titleImage.isHidden = false
        welcomeButton.isHidden = true
    }
}

