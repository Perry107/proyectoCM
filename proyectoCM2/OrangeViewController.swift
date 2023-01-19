//
//  OrangeViewController.swift
//  proyectoCM2
//
//  Created by Alumno on 17/01/23.
//

import UIKit

class OrangeViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carritoL.lista.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = carritoL.lista[indexPath.row].name + "  " + carritoL.lista[indexPath.row].cantidad.description
        
        return cell
    }
    

    @IBOutlet weak var tablaCarrito: UITableView!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Carrito"
        
        tablaCarrito.delegate = self
        tablaCarrito.dataSource = self

        // Do any additional setup after loading the view.
    }
    

}
