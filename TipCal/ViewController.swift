//
//  ViewController.swift
//  TipCal
//
//  Created by Brang Mai on 7/23/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var numZero: UIButton!
    @IBOutlet weak var numOne: UIButton!
    @IBOutlet weak var numTwo: UIButton!
    @IBOutlet weak var numThree: UIButton!
    @IBOutlet weak var numFour: UIButton!
    @IBOutlet weak var numFive: UIButton!
    @IBOutlet weak var numSix: UIButton!
    @IBOutlet weak var numSeven: UIButton!
    @IBOutlet weak var numEight: UIButton!
    @IBOutlet weak var numNine: UIButton!
    @IBOutlet weak var numDot: UIButton!
    @IBOutlet weak var numClear: UIButton!
    
    var previousNumber: String = ""
    
    @IBAction func numClear(_ sender: UIButton) {
        previousNumber = ""
        billAmountTextField.text = ""
        tipAmountLabel.text = String(format: "$%.2f")
        totalLabel.text = String(format: "$%.2f")
    }    
    
    @IBAction func actionDot(_ sender: UIButton) {
        let numberDot: String = "."
        billAmountTextField.text = previousNumber + numberDot
        previousNumber = previousNumber + numberDot
    }
    
    @IBAction func actionZero(_ sender: UIButton) {
        let numberZero: String = "0"
        billAmountTextField.text = previousNumber + numberZero
        previousNumber = previousNumber + numberZero
    }
    
    @IBAction func actionOne(_ sender: UIButton) {
        let numberOne: String = "1"
        billAmountTextField.text = previousNumber + numberOne
        previousNumber = previousNumber + numberOne
    }
    
    @IBAction func actionTwo(_ sender: UIButton) {
        let numberTwo: String = "2"
        billAmountTextField.text = previousNumber + numberTwo
        previousNumber = previousNumber + numberTwo
    }
    
    @IBAction func actionThree(_ sender: UIButton) {
        let numberThree: String = "3"
        billAmountTextField.text = previousNumber + numberThree
        previousNumber = previousNumber + numberThree
    }
    
    @IBAction func actionFour(_ sender: UIButton) {
        let numberFour: String = "4"
        billAmountTextField.text = previousNumber + numberFour
        previousNumber = previousNumber + numberFour
    }
    
    @IBAction func actionFive(_ sender: UIButton) {
        let numberFive: String = "5"
        billAmountTextField.text = previousNumber + numberFive
        previousNumber = previousNumber + numberFive
    }
    
    @IBAction func actionSix(_ sender: UIButton) {
        let numberSix: String = "6"
        billAmountTextField.text = previousNumber + numberSix
        previousNumber = previousNumber + numberSix
    }
    
    @IBAction func actionSeven(_ sender: UIButton) {
        let numberSeven: String = "7"
        billAmountTextField.text = previousNumber + numberSeven
        previousNumber = previousNumber + numberSeven
    }
    
    @IBAction func actionEight(_ sender: UIButton) {
        let numberEight: String = "8"
        billAmountTextField.text = previousNumber + numberEight
        previousNumber = previousNumber + numberEight
    }
    
    @IBAction func actionNine(_ sender: UIButton) {
        let numberNine: String = "9"
        billAmountTextField.text = previousNumber + numberNine
        previousNumber = previousNumber + numberNine
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
//        self.title = "Tip Calculator"
        self.title = ""
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

