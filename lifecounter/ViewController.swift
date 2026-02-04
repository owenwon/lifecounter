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
    @IBOutlet weak var p3Label: UILabel!
    @IBOutlet weak var p4Label: UILabel!
    @IBOutlet weak var p5Label: UILabel!
    @IBOutlet weak var p6Label: UILabel!
    @IBOutlet weak var p7Label: UILabel!
    @IBOutlet weak var p8Label: UILabel!
    
    @IBOutlet weak var loserLabel: UILabel!
    
    @IBOutlet weak var p1Input: UITextField!
    @IBOutlet weak var p2Input: UITextField!
    @IBOutlet weak var p3Input: UITextField!
    @IBOutlet weak var p4Input: UITextField!
    @IBOutlet weak var p5Input: UITextField!
    @IBOutlet weak var p6Input: UITextField!
    @IBOutlet weak var p7Input: UITextField!
    @IBOutlet weak var p8Input: UITextField!
    
    
    @IBOutlet weak var p3View: UIView!
    @IBOutlet weak var p4View: UIView!
    @IBOutlet weak var p5View: UIView!
    @IBOutlet weak var p6View: UIView!
    @IBOutlet weak var p7View: UIView!
    @IBOutlet weak var p8View: UIView!
    
    @IBOutlet weak var addPlayerButton: UIBarButtonItem!
    
    var history: [String] = []
    var p1Life = 20
    var p2Life = 20
    var p3Life = 20
    var p4Life = 20
    var p5Life = 20
    var p6Life = 20
    var p7Life = 20
    var p8Life = 20
    
    @IBAction func addPlayer(_ sender: Any) {
        if p3View.isHidden {
            p3View.isHidden = false
        } else if p4View.isHidden {
            p4View.isHidden = false
        } else if p5View.isHidden {
            p5View.isHidden = false
        } else if p6View.isHidden {
            p6View.isHidden = false
        } else if p7View.isHidden {
            p7View.isHidden = false
        } else if p8View.isHidden {
            p8View.isHidden = false
            addPlayerButton.isEnabled = false
        }
    }
    
    func disableAddButtonIfNeeded() {
        if addPlayerButton.isEnabled {
            addPlayerButton.isEnabled = false
        }
    }
    
    func updateUI() {
        p1Label.text = String(p1Life)
        p2Label.text = String(p2Life)
        p3Label.text = String(p3Life)
        p4Label.text = String(p4Life)
        p5Label.text = String(p5Life)
        p6Label.text = String(p6Life)
        p7Label.text = String(p7Life)
        p8Label.text = String(p8Life)
        
        loserLabel.isHidden = true
        
        if p1Life <= 0 {
            loserLabel.text = "Player 1 LOSES!"
            loserLabel.isHidden = false
        } else if p2Life <= 0 {
            loserLabel.text = "Player 2 LOSES!"
            loserLabel.isHidden = false
        } else if p3Life <= 0 && !p3View.isHidden {
            loserLabel.text = "Player 3 LOSES!"
            loserLabel.isHidden = false
        } else if p4Life <= 0 && !p4View.isHidden {
            loserLabel.text = "Player 4 LOSES!"
            loserLabel.isHidden = false
        } else if p5Life <= 0 && !p5View.isHidden {
            loserLabel.text = "Player 5 LOSES!"
            loserLabel.isHidden = false
        } else if p6Life <= 0 && !p6View.isHidden {
            loserLabel.text = "Player 6 LOSES!"
            loserLabel.isHidden = false
        } else if p7Life <= 0 && !p7View.isHidden {
            loserLabel.text = "Player 7 LOSES!"
            loserLabel.isHidden = false
        } else if p8Life <= 0 && !p8View.isHidden {
            loserLabel.text = "Player 8 LOSES!"
            loserLabel.isHidden = false
        }
    }
    
    @IBAction func p1CustomAdd(_ sender: Any) {
        let text = p1Input.text ?? ""
        if let value = Int(text) {
            history.append("Player 1 gained \(value) life")
            p1Life += value
            updateUI()
        }
    }
    
    
    @IBAction func p1CustomSubtract(_ sender: Any) {
        let text = p1Input.text ?? ""
        if let value = Int(text) {
            history.append("Player 1 lost \(value) life")
            p1Life -= value
            updateUI()
        }
    }
    
    @IBAction func p2CustomAdd(_ sender: Any) {
        let text = p2Input.text ?? ""
        if let value = Int(text) {
            history.append("Player 2 gained \(value) life")
            p2Life += value
            updateUI()
        }
    }
    
    @IBAction func p2CustomSubtract(_ sender: Any) {
        let text = p2Input.text ?? ""
        if let value = Int(text) {
            history.append("Player 2 lost \(value) life")
            p2Life -= value
            updateUI()
        }
    }
    
    @IBAction func p1AddOne(_ sender: Any) {
        p1Life += 1
        history.append("Player 1 gained 1 life")
        updateUI()
    }
    
    @IBAction func p1MinusOne(_ sender: Any) {
        p1Life -= 1
        history.append("Player 1 lost 1 life")
        updateUI()
    }

    
    @IBAction func p2AddOne(_ sender: Any) {
        p2Life += 1
        history.append("Player 2 gained 1 life")
        updateUI()
    }
    
    @IBAction func p2MinusOne(_ sender: Any) {
        p2Life -= 1
        history.append("Player 2 lost 1 life")
        updateUI()
    }
    
    
    @IBAction func p3AddOne(_ sender: Any) {
        p3Life += 1
        history.append("Player 3 gained 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
        
    @IBAction func p3MinusOne(_ sender: Any) {
        p3Life -= 1
        history.append("Player 3 lost 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    
    @IBAction func p3CustomAdd(_ sender: Any) {
        let text = p3Input.text ?? ""
        if let value = Int(text) {
            p3Life += value
            history.append("Player 3 gained \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    
    @IBAction func p3CustomSubtract(_ sender: Any) {
        let text = p3Input.text ?? ""
        if let value = Int(text) {
            p3Life -= value
            history.append("Player 3 lost \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    
    // Player 4
    @IBAction func p4AddOne(_ sender: Any) {
        p4Life += 1
        history.append("Player 4 gained 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    
    @IBAction func p4MinusOne(_ sender: Any) {
        p4Life -= 1
        history.append("Player 4 lost 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    
    @IBAction func p4CustomAdd(_ sender: Any) {
        let text = p4Input.text ?? ""
        if let value = Int(text) {
            p4Life += value
            history.append("Player 4 gained \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    
    @IBAction func p4CustomSubtract(_ sender: Any) {
        let text = p4Input.text ?? ""
        if let value = Int(text) {
            p4Life -= value
            history.append("Player 4 lost \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    
    // Player 5
    @IBAction func p5AddOne(_ sender: Any) {
        p5Life += 1
        history.append("Player 5 gained 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    
    @IBAction func p5MinusOne(_ sender: Any) {
        p5Life -= 1
        history.append("Player 5 lost 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    @IBAction func p5CustomAdd(_ sender: Any) {
        let text = p5Input.text ?? ""
        if let value = Int(text) {
            p5Life += value
            history.append("Player 5 gained \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    
    
    @IBAction func p5CustomSubtract(_ sender: Any) {
        let text = p5Input.text ?? ""
        if let value = Int(text) {
            p5Life -= value
            history.append("Player 5 lost \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    
    // Player 6
    @IBAction func p6AddOne(_ sender: Any) {
        p6Life += 1
        history.append("Player 6 gained 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    
    @IBAction func p6MinusOne(_ sender: Any) {
        p6Life -= 1
        history.append("Player 6 lost 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    
    @IBAction func p6CustomAdd(_ sender: Any) {
        let text = p6Input.text ?? ""
        if let value = Int(text) {
            p6Life += value
            history.append("Player 6 gained \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    
    @IBAction func p6CustomSubtract(_ sender: Any) {
        let text = p6Input.text ?? ""
        if let value = Int(text) {
            p6Life -= value
            history.append("Player 6 lost \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    
    // Player 7
    @IBAction func p7AddOne(_ sender: Any) {
        p7Life += 1
        history.append("Player 7 gained 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    
    @IBAction func p7MinusOne(_ sender: Any) {
        p7Life -= 1
        history.append("Player 7 lost 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    
    @IBAction func p7CustomAdd(_ sender: Any) {
        let text = p7Input.text ?? ""
        if let value = Int(text) {
            p7Life += value
            history.append("Player 7 gained \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    @IBAction func p7CustomSubtract(_ sender: Any) {
        let text = p7Input.text ?? ""
        if let value = Int(text) {
            p7Life -= value
            history.append("Player 7 lost \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    
    // Player 8
    @IBAction func p8AddOne(_ sender: Any) {
        p8Life += 1
        history.append("Player 8 gained 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    
    @IBAction func p8MinusOne(_ sender: Any) {
        p8Life -= 1
        history.append("Player 8 lost 1 life")
        updateUI()
        disableAddButtonIfNeeded()
    }
    @IBAction func p8CustomAdd(_ sender: Any) {
        let text = p8Input.text ?? ""
        if let value = Int(text) {
            p8Life += value
            history.append("Player 8 gained \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
    }
    
    @IBAction func p8CustomSubtract(_ sender: Any) {
        let text = p8Input.text ?? ""
        if let value = Int(text) {
            p8Life -= value
            history.append("Player 8 lost \(value) life")
            updateUI()
            disableAddButtonIfNeeded()
        }
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let destination = segue.destination as? HistoryViewController {
            
            destination.historyLog = history
        }
    }


}

