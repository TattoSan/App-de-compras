//
//  ViewController.swift
//  DataBackwards
//
//  Created by Germán Santos Jaimes on 9/23/18.
//  Copyright © 2018 Germán Santos Jaimes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Enviamos datos a la segunda vista
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController{
            destination.dataFromFirstView = Int(resultado.text!)!
        }
        
    }
    
    // Antes de que cierra la segunda vista, obtenemos datos
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        if let origin = segue.source as? SecondViewController{
            let data = origin.dataFromFirstView
            resultado.text = String(data)
        }
    }
    
    


}

