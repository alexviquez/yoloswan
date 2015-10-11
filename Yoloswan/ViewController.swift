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
    var items2: [String] = ["frecuente3.png","frecuente3.png","frecuente3.png","frecuente3.png","frecuente3.png"]
    var items3: [String] = ["Mamá","Papá"," Hijo","Sobrino","Primo"]
    
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
        Carousel2.tag = 0
        Carousel2.type = .CoverFlow
       Carousel2.dataSource = self
        Carousel2.delegate = self
        
        
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
            itemView = UIImageView(frame:CGRect(x:0, y:0, width:150 , height:150))
            itemView.contentMode = UIViewContentMode.ScaleAspectFill
            
            
            
            print("Holo")
            
            
            itemView.contentMode = .Left
            itemView.image = UIImage(named: "\(items2[index])")
            
            label = UILabel(frame:itemView.bounds)
            label.backgroundColor = UIColor.clearColor()
            label.textAlignment = .Center
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
            return value * 1.5
        }
        return value
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}

