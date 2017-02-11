//
//  ViewController.swift
//  xibcell
//
//  Created by Kshitiz Gupta on 09/02/17.
//  Copyright © 2017 Kshitiz Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Loginbtn(_ sender: UIButton) {
        let next = self.storyboard!.instantiateViewController(withIdentifier: "NextViewID") as! NextView
        
        navigationController?.pushViewController(next, animated: true)
        
    }
}

