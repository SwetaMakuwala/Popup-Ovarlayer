//
//  ViewController.swift
//  PopUp OverLayer
//
//  Created by sweta makuwala on 02/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnViewPopupTapped(_ sender: UIButton) {
      let overLayerVC = OverLayerVC()
        overLayerVC.appear(sender: self)
        
    }
    
}

