//
//  ViewController.swift
//  MagicBall
//
//  Created by Jacek Krzyzanowski on 03/11/2018.
//  Copyright © 2018 Jacek Krzyzanowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tablicaKul = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var losowyNumer: Int = 0
    
    @IBOutlet weak var obrazekKuli: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        losujObrazek()
    }

    @IBAction func przyciskSpytaj(_ sender: UIButton) {
        losujObrazek()
    }
    
    func losujObrazek(){
        losowyNumer = Int.random(in: 0...4)
        obrazekKuli.image = UIImage.init(named: tablicaKul[losowyNumer])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        losujObrazek()
    }
}

