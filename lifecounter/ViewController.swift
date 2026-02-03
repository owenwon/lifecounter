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
    @IBOutlet weak var p1Input: UITextField!
    @IBOutlet weak var p2Input: UITextField!
    
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
    
    @IBAction func p1CustomAdd(_ sender: Any) {
        let text = p1Input.text ?? ""
        if let value = Int(text) {
            p1Life += value
            updateUI()
        }
    }
    
    
    @IBAction func p1CustomSubtract(_ sender: Any) {
        let text = p1Input.text ?? ""
        if let value = Int(text) {
            p1Life -= value
            updateUI()
        }
    }
    
    @IBAction func p2CustomAdd(_ sender: Any) {
        let text = p2Input.text ?? ""
        if let value = Int(text) {
            p2Life += value
            updateUI()
        }
    }
    
    @IBAction func p2CustomSubtract(_ sender: Any) {
        let text = p2Input.text ?? ""
        if let value = Int(text) {
            p2Life -= value
            updateUI()
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

    
    @IBAction func p2AddOne(_ sender: Any) {
        p2Life += 1
        updateUI()
    }
    
    @IBAction func p2MinusOne(_ sender: Any) {
        p2Life -= 1
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loserLabel.isHidden = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }


}

