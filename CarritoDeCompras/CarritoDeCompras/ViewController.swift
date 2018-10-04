//
//  ViewController.swift
//  CarritoDeCompras
//
//  Created by MacBook on 17/09/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TablaSupermercado: UITableView!

    var  secciones: [Producto] = [Producto(nombre: "Jamon", precio: 43.50, nombreProducto: "jamon", contador: 0), Producto(nombre: "Leche", precio: 17.50, nombreProducto: "leche", contador: 0), Producto(nombre: "Huevos", precio: 21.30, nombreProducto: "huevo", contador: 0), Producto(nombre: "Pan", precio: 22.00, nombreProducto: "pan", contador: 0)]
    
    var carritoUno : [Producto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celda1", for: indexPath)
        
        cell.textLabel?.text = secciones[indexPath.row].nombre
        
        
        return cell
        
    }
    
    var index = 0
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "SecondView"{
            let indexPath = TablaSupermercado.indexPathForSelectedRow
            let destino = segue.destination as! SecondViewController
            destino.fromFirstView = secciones[(indexPath?.row)!]
            //destino.carritoDos = carritoUno
            index = (TablaSupermercado.indexPathForSelectedRow?.row)!
        }
        
        if segue.identifier == "ThirdView"{
            let indexPath = TablaSupermercado.indexPathForSelectedRow
            let destino = segue.destination as! ThirdViewController
            if carritoUno.count == 0 {}else{
            destino.fromFirstView = secciones[(indexPath?.row)!]
            destino.carritoTres = carritoUno
            }
        }
        
    }
    
var repeticiones = 10
var Produc : Producto = Producto(nombre: "", precio: 00.00, nombreProducto: "", contador: 0)
    @IBAction func unwindSecondView( segue: UIStoryboardSegue){
        if let origin = segue.source as? SecondViewController{
            Produc = Producto(nombre: "", precio: 00.00, nombreProducto: "", contador: 0)
            let data = origin.fromFirstView.nombre
            let data2 = origin.fromFirstView.contador
            let data3 = origin.fromFirstView.nombreProducto
            let data4 = origin.fromFirstView.precio
            Produc = Producto(nombre: data, precio: data4, nombreProducto: data3,   contador: data2)
            carritoUno.append(Produc)

        
        }
    }
    
    @IBAction func unwindThirdView( segue: UIStoryboardSegue){
        if let origin = segue.source as? ThirdViewController{
            let data = origin.carritoTres
            
            carritoUno = data
        }
    }
    
    
}

