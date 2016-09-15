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
    var tempo1 = Timer()
    var tempo2 = Timer()
    
    @IBOutlet weak var botaoTime1: UIImageView!
    @IBOutlet weak var botaoTime2: UIImageView!
    @IBOutlet weak var botaoResetar: UIImageView!
    @IBOutlet weak var lblTimer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapTime1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.time1Apertado))
        botaoTime1.addGestureRecognizer(tapTime1)
        botaoTime1.isUserInteractionEnabled = true

        let tapTime2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.time2Apertado))
        botaoTime2.addGestureRecognizer(tapTime2)
        botaoTime2.isUserInteractionEnabled = true

        let tapResetarRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.botaoResetarApertado))
        botaoResetar.addGestureRecognizer(tapResetarRecognizer)
        botaoResetar.isUserInteractionEnabled = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }

    
    func time1Apertado(){

        if timeGanhador == 0 {
            self.view.backgroundColor = UIColor.red
            timeGanhador = 1
            
            count = 15
            lblTimer.text = String("15")
            tempo1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
            
        }
    }
    
    func time2Apertado(){
        
        if timeGanhador == 0 {
            self.view.backgroundColor = UIColor.blue
            timeGanhador = 2
            
            count = 15
            lblTimer.text = String("15")
            tempo2 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
        }
    }
    
    
    func botaoResetarApertado(){
        timeGanhador = 0
        self.view.backgroundColor = UIColor.white
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
            self.view.backgroundColor = UIColor.white
        }
    }

}

