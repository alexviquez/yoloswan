//
//  ViewController.swift
//  Yoloswan
//
//  Created by Alejandro Viquez on 10/10/15.
//  Copyright © 2015 Alejandro Viquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
iCarouselDataSource , iCarouselDelegate{
   
    
    @IBOutlet weak var Carousel2: iCarousel!
    @IBOutlet weak var Carousel1: iCarousel!
    @IBOutlet weak var Carousel3: iCarousel!
    @IBOutlet weak var Carousel4: iCarousel!
    
    
    
    var items2: [String] = ["frecuente3.png","frecuente3.png","frecuente3.png","frecuente3.png","frecuente3.png"]
    var items3: [String] = ["Mamá","Papá"," Hijo","Sobrino","Primo"]
    var items4: [String] = ["5514938997","5543322122","5599083838","5517172626","5503928391"]
    
    var items: [Int] = []
    
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        for i in 0...4
        {
            items.append(i)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Carousel2.tag = 1
        Carousel1.tag = 2
        Carousel3.tag = 3
        Carousel4.tag = 4
        Carousel2.type = .CoverFlow
        Carousel1.type = .CoverFlow
        Carousel3.type = .CoverFlow
        Carousel4.type = .CoverFlow
        
        Carousel1.dataSource = self
        Carousel1.delegate = self
       Carousel2.dataSource = self
        Carousel2.delegate = self
        Carousel3.dataSource = self
        Carousel4.dataSource = self
        Carousel3.delegate = self
        Carousel4.delegate = self
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfItemsInCarousel(carousel: iCarousel) -> Int {
        return items.count
    }
    
    func carousel(carousel: iCarousel, viewForItemAtIndex index: Int, reusingView view: UIView?) -> UIView {
        var label: UILabel
        var itemView: UIImageView
        if (view == nil)
        {
            //don't do anything specific to the index within
            //this `if (view == nil) {...}` statement because the view will be
            //recycled and used with other index values later
            itemView = UIImageView(frame:CGRect(x:0, y:0, width:180 , height:95))
            itemView.contentMode = UIViewContentMode.ScaleAspectFill
            itemView.layer.borderWidth = 0.6
            itemView.layer.masksToBounds = false
            itemView.layer.borderColor = UIColor.clearColor().CGColor
            itemView.layer.cornerRadius = 15
            itemView.layer.cornerRadius = itemView.frame.size.height/3
            itemView.clipsToBounds = true
            print("Holo")
            
            
            itemView.contentMode = .Top
            itemView.image = UIImage(named: "\(items2[index])")
            
            label = UILabel(frame:itemView.bounds)
            label.backgroundColor = UIColor.clearColor()
            label.textAlignment = .Center
            label.textColor = UIColor.whiteColor()
            label.font = label.font.fontWithSize(15)
            label.tag = 1
            itemView.addSubview(label)
            
        }
        else
        {
            //get a reference to the label in the recycled view
            itemView = view as! UIImageView;
            label = itemView.viewWithTag(1) as! UILabel!
            
        }
        
        
        label.text = "\(items3[index])"
        return itemView
        
    }
    func carousel(carousel: iCarousel, valueForOption option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if (option == .Spacing)
        {
            return value * 1.4
        }
        return value
    }

    
    func carousel(carousel: iCarousel, didSelectItemAtIndex index: Int) {
        
        var numero: String = items4[index]
        //self .performSegueWithIdentifier("imageDisplaySegue", sender: nil)
            print("Se ha presionado un telefono")
            print(numero)
        var numerote: String = "tel://\(items4[index])"
        
        UIApplication.sharedApplication().openURL(NSURL(string: numerote )!)
        
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}

