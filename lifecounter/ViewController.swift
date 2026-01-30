//
//  ViewController.swift
//  lifecounter
//
//  Created by Owen Wong on 1/29/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var p1Label: UILabel!
    @IBOutlet weak var p2Label: UILabel!
    @IBOutlet weak var loserLabel: UILabel!
    
    var p1Life = 20
    var p2Life = 20
    
    func updateUI() {
        p1Label.text = String(p1Life)
        p2Label.text = String(p2Life)
        loserLabel.isHidden = true
        
        if p1Life <= 0 {
            loserLabel.text = "Player 1 LOSES!"
            loserLabel.isHidden = false
        } else if p2Life <= 0 {
            loserLabel.text = "Player 2 LOSES!"
            loserLabel.isHidden = false
        }
    }
    
    @IBAction func p1AddOne(_ sender: Any) {
        p1Life += 1
        updateUI()
    }
    
    @IBAction func p1MinusOne(_ sender: Any) {
        p1Life -= 1
        updateUI()
    }
    
    @IBAction func p1AddFive(_ sender: Any) {
        p1Life += 5
        updateUI()
    }
    
    @IBAction func p1MinusFive(_ sender: Any) {
        p1Life -= 5
        updateUI()
    }
    
    @IBAction func p2AddOne(_ sender: Any) {
        p2Life += 1
        updateUI()
    }
    
    @IBAction func p2MinusOne(_ sender: Any) {
        p2Life -= 1
        updateUI()
    }
    
    @IBAction func p2AddFive(_ sender: Any) {
        p2Life += 5
        updateUI()
    }
    
    @IBAction func p2MinusFive(_ sender: Any) {
        p2Life -= 5
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loserLabel.isHidden = true
    }


}

