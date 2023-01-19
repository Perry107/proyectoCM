//
//  OrangeViewController.swift
//  proyectoCM2
//
//  Created by Alumno on 17/01/23.
//

import UIKit

class OrangeViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var total: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carritoL.lista.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = carritoL.lista[indexPath.row].name + "   Cant: " +  carritoL.lista[indexPath.row].cantidad.description + " Precio: " + carritoL.lista[indexPath.row].precio.description + " MXN" 
        
        return cell
    }
    

    @IBOutlet weak var tablaCarrito: UITableView!
    
    
    @IBAction func comprar(_ sender: UIButton) {
        if carritoL.lista.count == 0{
            dismiss(animated: true, completion: nil)
            let alertN = UIAlertController(title: "Carrito vacio", message: "Regresando al menu", preferredStyle: .alert)
            let okActionN = UIAlertAction(title: "Ok", style: .default, handler: {(action) in
                
                self.navigationController?.popViewController(animated: true)
                
            })
            alertN.addAction(okActionN)
            present(alertN, animated: true, completion: nil)
        }
        else{
            carritoL.delAll()
            dismiss(animated: true, completion: nil)
            let alertC = UIAlertController(title: "Compraste tus productos", message: "Gracias por tu compra", preferredStyle: .alert)
            let okActionC = UIAlertAction(title: "Ok", style: .default, handler: {(action) in
                
                self.navigationController?.popViewController(animated: true)
                
            })
            alertC.addAction(okActionC)
            present(alertC, animated: true, completion: nil)
        }
    }
    
    func sumar() -> Float{
        var suma:Float = 0
        for cont in carritoL.lista{
            suma = cont.precio*Float(cont.cantidad) + suma
        }
        return suma
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Carrito"
        
        tablaCarrito.delegate = self
        tablaCarrito.dataSource = self
        total.text = String(sumar())

        // Do any additional setup after loading the view.
    }
    
    

}
