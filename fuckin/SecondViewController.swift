//
//  SecondViewController.swift
//  fuckin
//
//  Created by hyu on 12/5/1 R.
//  Copyright © 1 Reiwa hyu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var CountDownDisplay: UILabel!
    @IBOutlet weak var HintDisplay: UILabel!
    @IBOutlet weak var ContinueButton: UIButton!
    @IBOutlet weak var GameOverButton: UIButton!
    
    var countDown = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        GameOverButton.isHidden = true
        CountDownDisplay.text = String(countDown)
    }
    

    @IBAction func ContinueAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func GameOverAction(_ sender: UIButton) {
    }
}
