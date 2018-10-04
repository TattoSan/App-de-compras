//
//  ThirdViewController.swift
//  CarritoDeCompras
//
//  Created by MacBook on 03/10/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var precioFinal: UILabel!
   
    var fromFirstView : Producto = Producto(nombre: "", precio: 0.0, nombreProducto: "", contador: 0)
    
    var carritoTres: [Producto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var sumaPrecio:  Double = 0
        for contador in carritoTres{
            sumaPrecio = sumaPrecio + ((contador.precio) * Double(contador.contador))
        }
        precioFinal.text = "Precio Final:  " + String(sumaPrecio)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carritoTres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celda2", for: indexPath)
        
        cell.textLabel?.text = String(carritoTres[indexPath.row].contador) + "   " + carritoTres[indexPath.row].nombre +  "   "  + String(carritoTres[indexPath.row].precio)
        
        
        return cell
    }
    @IBAction func unwindThirdView( segue: UIStoryboardSegue){
        carritoTres = []
    }
}
