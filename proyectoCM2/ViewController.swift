//
//  ViewController.swift
//  proyectoCM2
//
//  Created by Alumno on 17/01/23.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        carritoI.add(producto: agua)
        carritoI.add(producto: aguaJamaica)
        carritoI.add(producto: agua)
        
        print("Resultado",carritoI.carrito[1].cantidad)
        
        print(carritoI.carrito[0].name)
        print(carritoI.carrito[1].id)
        
        carritoI.del(producto: agua)
        
        for (index,producto) in carritoI.carrito.enumerated(){
            print(index,".",producto.name)
        }
        
        carritoI.add(producto: agua)
        carritoI.add(producto: aguaJamaica)
        
        for (index,producto) in carritoI.carrito.enumerated(){
            print(index,".",producto.name)
        }
        
    }
    
    
    
}

