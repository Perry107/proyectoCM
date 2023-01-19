//
//  listaProductos.swift
//  proyectoCM2
//
//  Created by Alumno on 18/01/23.
//

import Foundation
import UIKit

class listaProductos{
    var lista:[producto] = []
    func add(producto:producto){
        
        for (index,productoC) in self.lista.enumerated(){
            if(productoC.id == producto.id){
                self.lista[index].cantidad+=1
                print("aumente cantidad")
                return
            }
        }
        self.lista.append(producto)
        print("agregue elemento",producto.name)
    }
    func del(producto:producto){
        for (index,productoC) in self.lista.enumerated(){
            if(productoC.id == producto.id){
                self.lista.remove(at: index)
            }
        }
    }
}
