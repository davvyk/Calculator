//
//  HelpView.swift
//  Calculator
//
//  Created by David Kidd on 08/11/2014.
//  Copyright (c) 2014 DavidKidd. All rights reserved.
//

import UIKit
var tip1pressed = true
var buttonFadeDelay = 0.2
var buttonFadeDuration = 1.5

class HelpView: UIViewController {

    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var tip1button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        tip1button.alpha = 0
        
        
        
        
        

        // Do any additional setup after loading the view.
    }
    
    //viewdidappear sets up items after view stack has loaded
    override func viewDidAppear(animated: Bool) {
        alphaAnimate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // this code offers basic toggled animation for help tips
    @IBAction func animate(sender: UIButton) {
        println(tip1pressed)
        if tip1pressed {
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.9, options: nil, animations: {
            
            self.myFirstLabel.center = CGPoint(x:24, y: 310)
            self.myFirstLabel.alpha = 1
            }, completion: nil)
            tip1pressed = false
        } else {
            UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.9, options: nil, animations: {
                
                self.myFirstLabel.center = CGPoint(x:24 - 50, y: 310)
                self.myFirstLabel.alpha = 0
                }, completion: nil)
            tip1pressed = true
        }
        
    }
    
    func alphaAnimate () {
        UIView.animateWithDuration(buttonFadeDuration, delay: buttonFadeDelay, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: nil, animations: {
            self.tip1button.alpha = 1
            }, completion: nil)
    }
    
  
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
