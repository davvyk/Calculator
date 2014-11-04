//
//  ViewController.swift
//  Calculator
//
//  Created by David Kidd on 30/10/2014.
//  Copyright (c) 2014 DavidKidd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var buttonDiv: UIButton!
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var equalsButton: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    @IBAction func ExitSegway (sender: UIStoryboardSegue){}
    
    var shadowRadius : CGFloat = 0
    var shadowOpacity : Float = 0.3
    var shadowHeight = -5
    let calculations = Calcultions()
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, 
        
 /////THIS SETS UP TOP SHADOWS, NOT SURE ON THEM
        
//     
//        topBox.layer.shadowOffset = CGSize(width: 0, height: 2)
//        topBox.layer.shadowRadius = 0.5
//        topBox.layer.shadowOpacity = 0.3
        
        button8.layer.shadowOffset = CGSize(width: 0, height: shadowHeight)
        button8.layer.shadowRadius = shadowRadius
        button8.layer.shadowOpacity = shadowOpacity
        
    
        
        button7.layer.shadowOffset = CGSize(width: 0, height: shadowHeight)
        button7.layer.shadowRadius = shadowRadius
        button7.layer.shadowOpacity = shadowOpacity
        
        buttonDiv.layer.shadowOffset = CGSize(width: 0, height: shadowHeight)
        buttonDiv.layer.shadowRadius = shadowRadius
        buttonDiv.layer.shadowOpacity = shadowOpacity
        
        equalsButton.layer.shadowOffset = CGSize(width: 2, height: shadowHeight)
        equalsButton.layer.shadowRadius = shadowRadius
        equalsButton.layer.shadowOpacity = shadowOpacity
      
        
        
        button9.layer.shadowOffset = CGSize(width: 0, height: shadowHeight)
        button9.layer.shadowRadius = shadowRadius
        button9.layer.shadowOpacity = shadowOpacity
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressZero() {
        
        
        switch calculations.stringToComplete {
            case 1 : calculations.number1 += "0"
            answerLabel.text = calculations.number1
           
            
            case 2 : calculations.number2 += "0"
            answerLabel.text = calculations.number2
            
            
        default : println("default")
            
        }
      
        
    }
    @IBAction func pressOne() {
        switch calculations.stringToComplete {
        case 1 : calculations.number1 += "1"
        answerLabel.text = calculations.number1
            
            
        case 2 : calculations.number2 += "1"
        answerLabel.text = calculations.number2
         
            
            
        default : println("default")
            
    }

}
    
    @IBAction func pressTwo() {
        switch calculations.stringToComplete {
        case 1 : calculations.number1 += "2"
        answerLabel.text = calculations.number1
            
            
        case 2 : calculations.number2 += "2"
        answerLabel.text = calculations.number2
            
            
        default : println("default")
            
        }
        
    }
    
    @IBAction func pressThree() {
        switch calculations.stringToComplete {
        case 1 : calculations.number1 += "3"
        answerLabel.text = calculations.number1
            
            
        case 2 : calculations.number2 += "3"
        answerLabel.text = calculations.number2
            
            
        default : println("default")
            
        }
    }
  
    @IBAction func pressFour() {
        
        switch calculations.stringToComplete {
        case 1 : calculations.number1 += "4"
        answerLabel.text = calculations.number1
            
            
        case 2 : calculations.number2 += "4"
        answerLabel.text = calculations.number2
            
            
        default : println("default")
            
    }
    
}
    @IBAction func pressFive() {
        switch calculations.stringToComplete {
        case 1 : calculations.number1 += "5"
        answerLabel.text = calculations.number1
            
            
        case 2 : calculations.number2 += "5"
        answerLabel.text = calculations.number2
            
            
        default : println("default")
            
        }
        
    }
    
    @IBAction func pressSix() {
        switch calculations.stringToComplete {
        case 1 : calculations.number1 += "6"
        answerLabel.text = calculations.number1
            
            
        case 2 : calculations.number2 += "6"
        answerLabel.text = calculations.number2
            
            
        default : println("default")
            
        }
        
        
    }
    
    @IBAction func pressSeven() {
        switch calculations.stringToComplete {
        case 1 : calculations.number1 += "7"
        answerLabel.text = calculations.number1
            
            
        case 2 : calculations.number2 += "7"
        answerLabel.text = calculations.number2
            
            
        default : println("default")
            
        }
        
    }
    
    @IBAction func pressEight() {
        switch calculations.stringToComplete {
        case 1 : calculations.number1 += "8"
        answerLabel.text = calculations.number1
            
            
        case 2 : calculations.number2 += "8"
        answerLabel.text = calculations.number2
            
            
        default : println("default")
            
        }
        
    }
    
    
    @IBAction func pressNine() {
        switch calculations.stringToComplete {
        case 1 : calculations.number1 += "9"
        answerLabel.text = calculations.number1
    
            
            
        case 2 : calculations.number2 += "9"
        answerLabel.text = calculations.number2
            
            
        default : println("default")
            
        }
        
    }
    
    @IBAction func pressDot() {
        calculations.pressDotCheck()
        if calculations.dotNotFound {
        switch calculations.stringToComplete {
        case 1 : calculations.number1 += "."
        answerLabel.text = calculations.number1
            
            
        case 2 : calculations.number2 += "."
        answerLabel.text = calculations.number2
            
            
        default : println("default")
            }
            
        } else {
            println("somthing up with dotcheck")
        }
        
    }
    
    @IBAction func pressMultiply() {
     
     calculations.pressMultiplyFunc()
        
    }
    
    @IBAction func pressPlus() {
       
        calculations.pressPlusFunc()
        
    }
   
    @IBAction func pressDivide() {
        
       calculations.pressDivideFunc()
        
    }
    
    @IBAction func pressMinus() {
     
        calculations.pressMinusFunc()
        
    }
    
    @IBAction func pressEqual() {
        if calculations.equalsAlreadyPressed == false { // i know this case 0 works
            switch  calculations.functionSelector {
            case 0 :
                calculations.answer =    calculations.multiply(calculations.number1, b: calculations.number2)
                answerLabel.text = calculations.answer
                
                println("number1is \(calculations.number1)")
                println("number2is \(calculations.number2)")
                
                calculations.equalsAlreadyPressed = true
                
            case 1 :   calculations.answer =    calculations.divide(calculations.number1, b: calculations.number2)
            answerLabel.text = calculations.answer
            
            println("number1is \(calculations.number1)")
            println("number2is \(calculations.number2)")
            
            calculations.equalsAlreadyPressed = true
                
                
            case 2 : calculations.answer =    calculations.minus(calculations.number1, b: calculations.number2)
            answerLabel.text = calculations.answer
            
            println("number1is \(calculations.number1)")
            println("number2is \(calculations.number2)")
            
            calculations.equalsAlreadyPressed = true
                
            case 3: calculations.answer =    calculations.add(calculations.number1, b: calculations.number2)
            answerLabel.text = calculations.answer
            
            println("number1is \(calculations.number1)")
            println("number2is \(calculations.number2)")
            
            calculations.equalsAlreadyPressed = true
                
                
                
            default: var answer = "Oops"
            answerLabel.text =  answer
       
            }
            
            
            
        } else if calculations.equalsAlreadyPressed {
            
            switch  calculations.functionSelector {
            case 0 :
                calculations.answer =    calculations.multiply(calculations.answer, b: calculations.number2)
                answerLabel.text = calculations.answer
                
                println("number1is \(calculations.number1)")
                println("number2is \(calculations.number2)")
                
            case 1 : calculations.answer =    calculations.divide(calculations.answer, b: calculations.number2)
            answerLabel.text = calculations.answer
            
            println("number1is \(calculations.number1)")
            println("number2is \(calculations.number2)")
                
                
            case 2 : calculations.answer =    calculations.minus(calculations.answer, b: calculations.number2)
            answerLabel.text = calculations.answer
            
            println("number1is \(calculations.number1)")
            println("number2is \(calculations.number2)")
                
            case 3 : calculations.answer =    calculations.add(calculations.answer, b: calculations.number2)
            answerLabel.text = calculations.answer
            
            println("number1is \(calculations.number1)")
            println("number2is \(calculations.number2)")
                
                
                
            default: var answer = "Oops"
            answerLabel.text =  answer
                
                
            }
            
        }
        
    }

 
    @IBAction func pressC() {
        
        calculations.number1 = ""
        calculations.number2 = ""
        calculations.answer = ""
        calculations.equalsAlreadyPressed = false
        calculations.stringToComplete = 1
        answerLabel.text = "0"
        calculations.dotNotFound = true
        
    }
    
}




