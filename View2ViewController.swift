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
    override func viewDidLoad() {
        super.viewDidLoad()
        ansStore1.alpha = 0
        
        
        
        
        ansStore1.text = toPassAns1
        ansStore2.text = toPassAns2
        ansStore3.text = toPassAns3
        ansStore4.text = toPassAns4
        ansStore5.text = toPassAns5

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: nil, animations: {
            self.ansStore1.center = CGPoint(x:0 , y: 0)
            self.ansStore1.alpha = 1
            }, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateStoredAns() {

       
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
