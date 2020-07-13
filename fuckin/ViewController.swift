//
//  ViewController.swift
//  fuckin
//
//  Created by hyu on 10/24/1 R.
//  Copyright © 1 Reiwa hyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var keyl: UILabel!
    @IBOutlet weak var titleDisplay: UILabel!

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var countADisplay: UILabel!
    
    @IBOutlet weak var countBDisplay: UILabel!
    
    @IBOutlet weak var countCDisplay: UILabel!
    
    @IBOutlet weak var count1Button: UIButton!
    
    @IBOutlet weak var count2Button: UIButton!
    
    @IBOutlet weak var count3Button: UIButton!
    
    @IBOutlet weak var count4Button: UIButton!
    
    @IBOutlet weak var count5Button: UIView!
    
    @IBOutlet weak var count6Button: UIButton!
    
    @IBOutlet weak var count7Button: UIButton!
    
    @IBOutlet weak var lock: UIButton!
    
    var answer = 777
    var countA = 0
    var countB = 0
    var countC = 0
    
    var countDown = 11
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        answer = Int.random(in: 0..<999)
        label.isHidden = true
        lock.isHidden = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "ResultSegue"){
            let nextGoView = segue.destination as! SecondViewController
            nextGoView.countDown = countDown
        }
    }
    func updateDisplay(){
        countADisplay.text = String(countA)
        countBDisplay.text = String(countB)
        countCDisplay.text = String(countC)
        
    }
    
    @IBAction func tap1action(_ sender: UIButton) {
      countA = countA + 1
         if(countA > 9){
            countA = 0
        }
        countADisplay.text = String(countA)
        updateDisplay()
    }
    
    @IBAction func tap2action(_ sender: UIButton) {
        countB = countB + 1
           if(countB > 9){
               countB = 0
          }
        countBDisplay.text = String(countB)
        updateDisplay()
    }
    
    @IBAction func tap3action(_ sender: UIButton) {
        countC = countC + 1
           if(countC > 9){
               countC = 0
          }
        countCDisplay.text = String(countC)
        updateDisplay()
    }
    
    @IBAction func tap4action(_ sender: UIButton) {
        countA = countA - 1
        if(countA < 0){
            countA = 9
       }
        countADisplay.text = String(countA)
      updateDisplay()
    }
    
    @IBAction func tap5action(_ sender: UIButton) {
        countB = countB - 1
          if(countB < 0){
              countB = 9
         }
        countBDisplay.text = String(countB)
        updateDisplay()
    }
    
    @IBAction func tap6action(_ sender: UIButton) {
        countC = countC - 1
          if(countC < 0){
              countC = 9
         }
        countCDisplay.text = String(countC)
        updateDisplay()
    }
    
    @IBAction func top7action(_ sender: UIButton) {
        let checkNumber = (countA * 100) + (countB * 10) + (countC * 1)
        
        if(checkNumber == answer){
            keyl.text = "  UNLOCKED"
            label.isHidden = true
            lock.isHidden = false
            count7Button.isHidden = true
        }
        else if(checkNumber > answer){
            label.isHidden = false
            label.text = "bigger"
        }else{
            label.isHidden = false
            label.text = "smaller"
        }
    }

    @IBAction func LockAction(_ sender: UIButton) {
        count7Button.isHidden = false
        keyl.text = "  KEY LOCK"
        countA = 0
        countB = 0
        countC = 0
        updateDisplay()
        answer = Int.random(in: 0..<999)
        lock.isHidden = true
    }
    

}

