//
//  producto.swift
//  proyectoCM2
//
//  Created by Alumno on 17/01/23.
//

import Foundation
import UIKit

class producto {
    
    var name: String
    var precio: Float
    var descripcion: String
    var imagen: String
    var cantidad: Int = 1
    var categoria: Int
    var id: Int
    
    init(name: String,precio: Float,descripcion: String, imagen: String, categoria: Int, id:Int) {
        self.name = name
        self.precio = precio
        self.descripcion = descripcion
        self.imagen = imagen
        self.categoria = categoria
        self.id = id
    }
    
}
