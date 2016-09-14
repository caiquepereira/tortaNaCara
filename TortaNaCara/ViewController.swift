//
//  ViewController.swift
//  TortaNaCara
//
//  Created by Caique de Paula Pereira on 14/09/16.
//  Copyright © 2016 Caique de Paula Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timeGanhador = 0
    var count = 15
    var tempo1 = NSTimer()
    var tempo2 = NSTimer()
    
    @IBOutlet weak var botaoTime1: UIImageView!
    @IBOutlet weak var botaoTime2: UIImageView!
    @IBOutlet weak var botaoResetar: UIImageView!
    @IBOutlet weak var lblTimer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        botaoTime1.userInteractionEnabled = true
        botaoTime1.addGestureRecognizer(UITapGestureRecognizer(target:self, action:#selector(ViewController.time1Apertado(_:))))
        
        botaoTime2.userInteractionEnabled = true
        botaoTime2.addGestureRecognizer(UITapGestureRecognizer(target:self, action:#selector(ViewController.time2Apertado(_:))))
        
        botaoResetar.userInteractionEnabled = true
        botaoResetar.addGestureRecognizer(UITapGestureRecognizer(target:self, action:#selector(ViewController.botaoResetarApertado(_:))))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }

    
    func time1Apertado(img: AnyObject){

        if timeGanhador == 0 {
            self.view.backgroundColor = UIColor.redColor()
            timeGanhador = 1
            
            count = 15
            lblTimer.text = String("15")
            tempo1 = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
            
        }
    }
    
    func time2Apertado(img: AnyObject){
        
        if timeGanhador == 0 {
            self.view.backgroundColor = UIColor.blueColor()
            timeGanhador = 2
            
            count = 15
            lblTimer.text = String("15")
            tempo2 = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
        }
    }
    
    
    func botaoResetarApertado(img: AnyObject){
        timeGanhador = 0
        self.view.backgroundColor = UIColor.whiteColor()
        tempo1.invalidate()
        tempo2.invalidate()
        lblTimer.text = String("TEMPO")
    }
    
    func update() {
        if(count > 0) {
            count -= 1
            lblTimer.text = String(count)
        }else{
            lblTimer.text = String("FIM")
        }
    }

}

