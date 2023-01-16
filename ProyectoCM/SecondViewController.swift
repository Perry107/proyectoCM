//
//  SecondViewController.swift
//  Proyecto3
//
//  Created by Macbook on 3/14/19.
//  Copyright © 2019 Practica3. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var enviada: productos = productos(nombre : "" ,precio : 0.0, imagen: "", descripcion: "")
    
    @IBOutlet weak var Titulo: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var Descripcion: UILabel!
    @IBOutlet weak var Precio: UILabel!
    
    
    @IBAction func Comprar(_ sender: UIButton) {
        ListaCarro.append(enviada)
        print(ListaCarro)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Titulo.text = enviada.nombre
        ImageView.image = UIImage(named: enviada.imagen)
        Descripcion.text = enviada.descripcion
        Precio.text = enviada.precio.description

    }
    

    
}
