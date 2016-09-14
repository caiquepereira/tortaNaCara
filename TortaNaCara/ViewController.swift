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
    
    @IBOutlet weak var botaoTime1: UIImageView!
    @IBOutlet weak var botaoTime2: UIImageView!
    
    @IBOutlet weak var botaoResetar: UIImageView!
    
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
        // Dispose of any resources that can be recreated.
    }

    
    func time1Apertado(img: AnyObject){

        if timeGanhador == 0 {
            self.view.backgroundColor = UIColor.redColor()
            timeGanhador = 1
        }
    }
    
    func time2Apertado(img: AnyObject){
        print("Time vermelho ganhou")
        
        if timeGanhador == 0 {
            self.view.backgroundColor = UIColor.blueColor()
            timeGanhador = 2
        }
    }
    
    
    func botaoResetarApertado(img: AnyObject){
            timeGanhador = 0
            self.view.backgroundColor = UIColor.whiteColor()
    }


}
