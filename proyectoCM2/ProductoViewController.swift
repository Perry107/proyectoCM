//
//  ProductoViewController.swift
//  proyectoCM2
//
//  Created by alumno on 18/01/23.
//

import UIKit

class ProductoViewController: UIViewController {
    
    var enviada: producto = producto(name: "", precio: 0.0, descripcion: "", imagen: "", categoria: 0, id: 0)
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var Nombre: UILabel!
    @IBOutlet weak var Descripcion: UILabel!
    @IBOutlet weak var Precio: UILabel!
    
    
    @IBAction func Favoritos(_ sender: UIButton) {
        favoritosL.add(producto: enviada)
        let alertF = UIAlertController(title: "Agregado a favoritos", message: "Agregado correctamente", preferredStyle: .alert)
        let okActionF = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertF.addAction(okActionF)
        present(alertF, animated: true, completion: nil)
    }
    
    @IBAction func Carro(_ sender: UIButton) {
        carritoL.add(producto: enviada)
        let alert = UIAlertController(title: "Agregado al carrito", message: "Agregado correctamente", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Nombre.text = enviada.name
        ImageView.image = UIImage(named: enviada.imagen)
        Descripcion.text = enviada.descripcion
        Precio.text = enviada.precio.description

        // Do any additional setup after loading the view.
    }

}
