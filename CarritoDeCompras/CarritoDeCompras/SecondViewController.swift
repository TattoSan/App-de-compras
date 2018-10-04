//
//  SecondViewViewController.swift
//  CarritoDeCompras
//
//  Created by MacBook on 17/09/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var imagenProducto: UIImageView!
    @IBOutlet weak var precioPro: UILabel!
    
    
    var fromFirstView : Producto = Producto(nombre: "", precio: 0.0, nombreProducto: "", contador: 0)
    //var carritoDos : [Producto] = []
  

    @IBOutlet weak var etiqueta: UILabel!
    
    @IBAction func comprar(_ sender: UIButton) {
        if fromFirstView.contador == 0{
            fromFirstView.contador = fromFirstView.contador + 1
            //carritoDos.append(fromFirstView)
                  } else{
            fromFirstView.contador = fromFirstView.contador + 1
        }
        print(fromFirstView.contador)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagenProducto.image = UIImage(named: fromFirstView.nombreProducto)
        etiqueta.text = fromFirstView.nombre
        precioPro.text = String(fromFirstView.precio)
    }



}
