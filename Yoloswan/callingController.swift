//
//  callingController.swift
//  Yoloswan
//
//  Created by Christian de J Moreno Marín on 11/10/15.
//  Copyright © 2015 Alejandro Viquez. All rights reserved.
//

import UIKit

class callingController: UIViewController {

    @IBAction func backRoot(sender: AnyObject) {
       self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBOutlet weak var callOff: UIButton!
    @IBOutlet weak var labelNum: UILabel!
    var Strinng: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        
        
        labelNum.text = Strinng

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
