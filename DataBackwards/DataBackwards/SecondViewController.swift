//
//  SecondViewController.swift
//  DataBackwards
//
//  Created by Germán Santos Jaimes on 9/23/18.
//  Copyright © 2018 Germán Santos Jaimes. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var valor: UILabel!
    var dataFromFirstView : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        valor.text = String(dataFromFirstView)
    }
    
    
    @IBAction func updateValue(_ sender: UIButton) {
        
        dataFromFirstView = dataFromFirstView + 1
        valor.text = String(dataFromFirstView)
        
    }
    
    

}
