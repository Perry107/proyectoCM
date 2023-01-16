//
//  ViewController.swift
//  Proyecto3
//
//  Created by Macbook on 3/14/19.
//  Copyright © 2019 Practica3. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tabla: UITableView!
    
    var Lista = [productos] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Lista.append(productos(nombre: "Refresco", precio: 13.00, imagen: "images.jpeg (554×554)", descripcion: "Refrescante refresco"))
        Lista.append(productos(nombre: "Agua", precio: 8.00, imagen: "agua.jpeg (408×612)", descripcion: "Refrescante agua simple"))
        Lista.append(productos(nombre: "Jugo", precio: 15.00, imagen: "jugo.jpeg (538×570)", descripcion: "Refrescante jugo de naranja"))
        Lista.append(productos(nombre: "Nachos", precio: 25.50, imagen: "nachos.jpeg (655×368)", descripcion: "Ricos nachos con queso"))
        Lista.append(productos(nombre: "Pizza", precio: 120.00, imagen: "pizza.jpeg (655×468)", descripcion: "Pizza de peperoni"))
        Lista.append(productos(nombre: "HotDog", precio: 10.00, imagen: "HotDog.jpeg (653×470)", descripcion: "Perro caliente"))
        Lista.append(productos(nombre: "Chicharrones", precio: 12.50, imagen: "chicharrones.jpeg (554×554)", descripcion: "Crujientes papas"))
        Lista.append(productos(nombre: "Chicles", precio: 8.50, imagen: "chicles.jpeg (554×554)", descripcion: "Masticables chicles"))
        Lista.append(productos(nombre: "Dona", precio: 10.50, imagen: "dona.jpeg (679×452)", descripcion: "Deliciosa dona"))
        Lista.append(productos(nombre: "Leche", precio: 14.00, imagen: "leche.jpeg (554×554)", descripcion: "Refrescante leche"))
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = "\(Lista[indexPath.row].nombre)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    @IBAction func regresarVista(segue:UIStoryboardSegue){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar"{
            
            let indexPath = tabla.indexPathForSelectedRow
            
            let destino = segue.destination as! SecondViewController
            
            destino.enviada = Lista[(indexPath?.row)!]
            
        }
    }
    
}

