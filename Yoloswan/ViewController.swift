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
    @IBOutlet weak var Carousel1: iCarousel!
    var items: [Int] = []
    @IBOutlet var carousel : iCarousel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        for i in 0...5
        {
            items.append(i)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Carousel1.tag = 0
        Carousel1.type = .CoverFlow
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfItemsInCarousel(carousel: iCarousel) -> Int {
        if(carousel.tag==1){
            return 7}
        return 0
    }
    
    func carousel(carousel: iCarousel, viewForItemAtIndex index: Int, reusingView view: UIView?) -> UIView {
        var label: UILabel
        var itemView: UIImageView
        if (view == nil)
        {
            //don't do anything specific to the index within
            //this `if (view == nil) {...}` statement because the view will be
            //recycled and used with other index values later
            itemView = UIImageView(frame:CGRect(x:0, y:0, width:95, height:95))
            itemView.image = UIImage(named: "frequencia1.png")
            itemView.contentMode = .Center
            
            label = UILabel(frame:itemView.bounds)
            label.backgroundColor = UIColor.clearColor()
            label.textAlignment = .Natural
            label.font = label.font.fontWithSize(50)
            label.tag = 1
            itemView.addSubview(label)
        }
        else
        {
            //get a reference to the label in the recycled view
            itemView = view as! UIImageView;
            label = itemView.viewWithTag(1) as! UILabel!
        }
        label.text = "\(items[index])"
        return itemView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}

