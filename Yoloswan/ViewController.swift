//
//  ViewController.swift
//  Yoloswan
//
//  Created by Alejandro Viquez on 10/10/15.
//  Copyright © 2015 Alejandro Viquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, iCarouselDataSource , iCarouselDelegate {
    var AuxiliarInt: Int = 0
    var AuxIndex: Int = 0
    
    @IBOutlet weak var Carousel2: iCarousel!
    @IBOutlet weak var Carousel1: iCarousel!
    @IBOutlet weak var Carousel3: iCarousel!
    @IBOutlet weak var Carousel4: iCarousel!
    
    @IBOutlet weak var backGround: UIView!
    var imagenes1: [String] = ["frecuente1.png","frecuente2.png","frecuente3.png","frecuente4.png","frecuente5.png"]
    var imagenes2: [String] = ["felicita1.png","felicita2.png","felicita3.png","felicita4.png","felicita5.png"]
    var imagenes3: [String] = ["lugar1.png","lugar2.png","lugar3.png","lugar1.png","lugar2.png"]
    var imagenes4: [String] = ["cercano1.png","cercano2.png","cercano3.png","cercano4.png","cercano5.png"]
    
    var nombres1: [String] = ["Claudia","Jennifer","Diego","Mauricio","Alexa"]
    var nombres2: [String] = ["Sofía","Ana"," Mamá","Karla","Juan"]
    var nombres3: [String] = ["Inn Fiesta","Ibis Hotel","Tacos","Inn Fiesta","Ibis Hotel"]
    var nombres4: [String] = ["Laura","Pablo","Sara","Paulina","Alfonso"]
    
    var telefonos1: [String] = ["5514938997","5543322122","5599083838","5517172626","5503928391"]
    var telefonos2: [String] = ["5514938997","5543322122","5599083838","5517172626","5503928391"]
    var telefonos3: [String] = ["5514938997","5543322122","5599083838","5517172626","5503928391"]
    var telefonos4: [String] = ["5514938997","5543322122","5599083838","5517172626","5503928391"]
    
    
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
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background2.png")!)
        self.view.contentMode = .ScaleAspectFit
        
        
        Carousel2.tag = 1
        Carousel1.tag = 2
        Carousel3.tag = 3
        Carousel4.tag = 4
        Carousel2.type = .Linear
        Carousel1.type = .Linear
        Carousel3.type = .Linear
        Carousel4.type = .Linear
        
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
            itemView = UIImageView(frame:CGRect(x:0,y:0,width:100 , height:100))
            itemView.layer.borderWidth = 0.3
            itemView.layer.masksToBounds = false
            itemView.layer.borderColor = UIColor.clearColor().CGColor
            itemView.layer.cornerRadius = 15
            itemView.layer.cornerRadius = itemView.frame.size.height/3
            itemView.clipsToBounds = true
            label = UILabel(frame:itemView.bounds)
            print("Holo")
            
            
            if(carousel.tag == 1){
                itemView.image = UIImage(named: "\(imagenes1[index])")
                label.text = "\(nombres1[index])"
                
            }
            if(carousel.tag == 2){
                itemView.image = UIImage(named: "\(imagenes2[index])")
                label.text = "\(nombres2[index])"
                
            }
            if(carousel.tag == 3){
                itemView.image = UIImage(named: "\(imagenes3[index])")
                label.text = "\(nombres3[index])"
            }
            
            if(carousel.tag == 4){
                itemView.image = UIImage(named: "\(imagenes4[index])")
                label.text = "\(nombres4[index])"
            }
            
            
            itemView.contentMode = UIViewContentMode.ScaleAspectFit
            
            label.textColor = UIColor(white: 1, alpha: 0.1)
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
        
        
        return itemView
        
    }
    func carousel(carousel: iCarousel, valueForOption option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if (option == .Spacing)
        {
            return value * 1.6
        }
        return value
    }
    
    
    func carousel(carousel: iCarousel, didSelectItemAtIndex index: Int) {
        if(carousel.tag == 1){
            //itemView.image = UIImage(named: "\(items2[index])")
            AuxiliarInt = 1
            //performSegueWithIdentifier("segueMap", sender: nil)
            AuxIndex = index
        
        }
        if(carousel.tag == 2){
            //itemView.image = UIImage(named: "\(items5[index])")
            AuxiliarInt = 2
            //performSegueWithIdentifier("segueMap", sender: nil)
            AuxIndex = index
        }
        
        if(carousel.tag == 3){
            //itemView.image = UIImage(named: "\(items6[index])")
            AuxiliarInt = 3
            performSegueWithIdentifier("segueMapSites", sender: nil)
            AuxIndex = index
        }
        
        if(carousel.tag == 4){
            AuxiliarInt = 4
            performSegueWithIdentifier("segueMapSites", sender: nil)
            AuxIndex = index
            //itemView.image = UIImage(named: "\(items7[index])")
        }
        var numero: String = telefonos1[index]
        //self .performSegueWithIdentifier("imageDisplaySegue", sender: nil)
        print("Se ha presionado un telefono")
        print(numero)
        var numerote: String = "tel://\(telefonos1[index])"
        
        UIApplication.sharedApplication().openURL(NSURL(string: numerote )!)
        print(AuxiliarInt)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            var Random: MapController = segue.destinationViewController as! MapController
            
            intA = AuxiliarInt
            intIndex = AuxIndex
            //sending 2 values
            // Auxiliar Int = El carrucel
            // Auxiliar Index = La posición del carrucel
        
    }
    
    
    


}

