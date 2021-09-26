//
//  ViewController.swift
//  Week3Project
//
//  Created by Михаил Пак on 24.09.2021.
//

import UIKit

class ViewController: UIViewController {
    let calculator = Calculator()

    @IBOutlet weak var input: UILabel!
    @IBOutlet weak var changeModeBtn: UIButton!
    @IBOutlet weak var textView: UITextView!
    
    let alertNum = UIAlertController(title: "Error", message: "Operand can be only one digit!", preferredStyle: UIAlertController.Style.alert)
    let alertOp = UIAlertController(title: "Error", message: "Wrong symbol!", preferredStyle: UIAlertController.Style.alert)
    let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        alertNum.addAction(alertAction)
        alertOp.addAction(alertAction)
        textView.isHidden = true;
    }
    
    func addNum(i: Int) {
        calculator.push(s: String(i))
        
        if !calculator.validNum() {
            present(alertNum, animated: true, completion: nil)
        } else {
            input.text = (input.text ?? "") + String(i) + " "
        }
    }
    
    func addOp(s: String) {
        calculator.push(s: s)
        
        if !calculator.validOperator() {
            present(alertOp, animated: true, completion: nil)
        } else {
            input.text = (input.text ?? "") + s + " "
        }
    }
 
    
    @IBAction func one(_ sender: Any) {
        if input.text!.contains("=") {
            calculator.list = []
            input.text = ""
            
            addNum(i: 1)
        } else {
            addNum(i: 1)
        }
    }
    
    @IBAction func two(_ sender: Any) {
        if input.text!.contains("=") {
            calculator.list = []
            input.text = ""
            
            addNum(i: 2)
        } else {
            addNum(i: 2)
        }
    }
    @IBAction func three(_ sender: Any) {
        if input.text!.contains("=") {
            calculator.list = []
            input.text = ""
            
            addNum(i: 3)
        } else {
            addNum(i: 3)
        }
    }
    @IBAction func four(_ sender: Any) {
        if input.text!.contains("=") {
            calculator.list = []
            input.text = ""
            
            addNum(i: 4)
        } else {
            addNum(i: 4)
        }
    }
    @IBAction func five(_ sender: Any) {
        if input.text!.contains("=") {
            calculator.list = []
            input.text = ""
            
            addNum(i: 5)
        } else {
            addNum(i: 5)
        }
    }
    @IBAction func six(_ sender: Any) {
        if input.text!.contains("=") {
            calculator.list = []
            input.text = ""
            
            addNum(i: 6)
        } else {
            addNum(i: 6)
        }
    }
    @IBAction func seven(_ sender: Any) {
        if input.text!.contains("=") {
            calculator.list = []
            input.text = ""
            
            addNum(i: 7)
        } else {
            addNum(i: 7)
        }
    }
    @IBAction func eight(_ sender: Any) {
        if input.text!.contains("=") {
            calculator.list = []
            input.text = ""
            
            addNum(i: 8)
        } else {
            addNum(i: 8)
        }
    }
    @IBAction func nine(_ sender: Any) {
        if input.text!.contains("=") {
            calculator.list = []
            input.text = ""
            
            addNum(i: 9)
        } else {
            addNum(i: 9)
        }
    }
    @IBAction func zero(_ sender: Any) {
        if input.text!.contains("=") {
            calculator.list = []
            input.text = ""
            
            addNum(i: 0)
        } else {
            addNum(i: 0)
        }
    }
    
    
    @IBAction func clear(_ sender: Any) {
        input.text = ""
        calculator.list = []
    }
    
    
    @IBAction func plus(_ sender: Any) {
        if input.text!.contains("=") {
            present(alertOp, animated: true, completion: nil)
        } else {
            addOp(s: "+")
        }
    }
    @IBAction func minus(_ sender: Any) {
        if input.text!.contains("=") {
            present(alertOp, animated: true, completion: nil)
        } else {
            addOp(s: "-")
        }
    }
    @IBAction func mult(_ sender: Any) {
        if input.text!.contains("=") {
            present(alertOp, animated: true, completion: nil)
        } else {
            addOp(s: "*")
        }
    }
    @IBAction func divide(_ sender: Any) {
        if input.text!.contains("=") {
            present(alertOp, animated: true, completion: nil)
        } else {
            addOp(s: "/")
        }
    }
    
    
    @IBAction func equal(_ sender: Any) {
        if input.text!.contains("=") {
            input.text = ""
            calculator.list = [];
        } else {
            if input.text != "" {
                input.text = (input.text ?? "") + "= " + String(calculator.calc())
            } else {
                present(alertOp, animated: true, completion: nil)
            }
        }
        
        if !textView.isHidden {
            textView.text = (textView.text ?? "") + input.text! + "\n"
        }
    }
    
    
    @IBAction func changeMode(_ sender: Any) {
        if textView.isHidden {
            changeModeBtn.setTitle("Standard - No History", for: .normal)
            textView.isHidden = !textView.isHidden;
        } else {
            changeModeBtn.setTitle("Advance - With History", for: .normal)
            textView.text = ""
            textView.isHidden = !textView.isHidden;
        }
    }
}

