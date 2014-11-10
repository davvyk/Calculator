//
//  View2ViewController.swift
//  Calculator
//
//  Created by David Kidd on 06/11/2014.
//  Copyright (c) 2014 DavidKidd. All rights reserved.
//

import UIKit

class View2ViewController: UIViewController {

    @IBOutlet weak var ansStore1: UILabel!
    @IBOutlet weak var ansStore2: UILabel!
    @IBOutlet weak var ansStore3: UILabel!
    @IBOutlet weak var ansStore4: UILabel!
    @IBOutlet weak var ansStore5: UILabel!
    
    @IBOutlet weak var BGBox: UILabel!
    
    
    
    let calculations = Calcultions()
    var toPass:String!
    var toPassAns1:String!
    var toPassAns2:String!
    var toPassAns3:String!
    var toPassAns4:String!
    var toPassAns5:String!
    let animateDuration = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        ansStore1.alpha = 0
        ansStore2.alpha = 0
        ansStore3.alpha = 0
        ansStore4.alpha = 0
        ansStore5.alpha = 0
        
        
        
        
        ansStore1.text = toPassAns1
        ansStore2.text = toPassAns2
        ansStore3.text = toPassAns3
        ansStore4.text = toPassAns4
        ansStore5.text = toPassAns5
        
    // set up shadows
        BGBox.layer.shadowOffset = CGSize(width: 0, height: -20)
        BGBox.layer.shadowRadius = -5
        BGBox.layer.shadowOpacity = 0.3
        
        ansStore1.layer.shadowOffset = CGSize(width: 0, height: 20)
        ansStore1.layer.shadowRadius = -5
        ansStore1.layer.shadowOpacity = 0.3
        
        ansStore2.layer.shadowOffset = CGSize(width: 0, height: 20)
        ansStore2.layer.shadowRadius = -5
        ansStore2.layer.shadowOpacity = 0.3
        
        ansStore3.layer.shadowOffset = CGSize(width: 0, height: 20)
        ansStore3.layer.shadowRadius = -5
        ansStore3.layer.shadowOpacity = 0.3
        
        ansStore4.layer.shadowOffset = CGSize(width: 0, height: 20)
        ansStore4.layer.shadowRadius = -5
        ansStore4.layer.shadowOpacity = 0.3
        
        ansStore5.layer.shadowOffset = CGSize(width: 0, height: 20)
        ansStore5.layer.shadowRadius = -5
        ansStore5.layer.shadowOpacity = 0.3
        
        
        

        // Do any additional setup after loading the view.
    
    }
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, delay: 0.5, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: nil, animations: {
            self.ansStore1.frame = CGRect(x: 32, y: 104 + 1000, width: 104, height: 32)
            self.ansStore1.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: nil, animations: {
            self.ansStore2.frame = CGRect(x: 32, y: 104 + 1000, width: 104, height: 32)
            self.ansStore2.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0.3, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: nil, animations: {
            self.ansStore3.frame = CGRect(x: 32, y: 104 + 1000, width: 104, height: 32)
            self.ansStore3.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: nil, animations: {
            self.ansStore4.frame = CGRect(x: 32, y: 104 + 1000, width: 104, height: 32)
            self.ansStore4.alpha = 1
            }, completion: nil)
        
        
        UIView.animateWithDuration(1, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: nil, animations: {
            self.ansStore5.frame = CGRect(x: 32, y: 104 + 1000, width: 104, height: 32)
            self.ansStore5.alpha = 1
            }, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateStoredAns() {

       
        
    }

    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
