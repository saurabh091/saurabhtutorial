//
//  ViewController.swift
//  SaurabhGit
//  Created by STIGA-IMAC1 on 18/04/17.
//  Copyright © 2017 STIGA-IMAC1. All rights reserved.
//

import UIKit
import MBProgressHUD

class ViewController: UIViewController {
    
    var loader = MBProgressHUD()
    @IBOutlet weak var sampleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Changes performed....")
        loader = MBProgressHUD.showAdded(to: sampleView, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stopLoader(_ sender: Any) {
        DispatchQueue.global().async {
            DispatchQueue.main.async {
                self.loader.hide(animated: true)
            }
        }
    }
    
}

