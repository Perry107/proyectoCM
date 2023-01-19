//
//  ViewController.swift
//  proyectoCM2
//
//  Created by Alumno on 17/01/23.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tablaInicio: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inventarioL.add(producto: agua)
        inventarioL.add(producto: aguaJamaica)
        inventarioL.add(producto: celular)
        for producto in inventarioL.lista{
            if(producto.categoria == 1){
                categoria1.add(producto: producto)
            }
        }
        favoritosL.add(producto: celular)
        favoritosL.add(producto: agua)
        tablaInicio.delegate = self
        tablaInicio.dataSource = self
        
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventarioL.lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellI = tableView.dequeueReusableCell(withIdentifier: "celdaI", for: indexPath)
        cellI.textLabel?.text = inventarioL.lista[indexPath.row].name
        return cellI
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar"{
            let indexPath = tablaInicio.indexPathForSelectedRow
            
            let destino = segue.destination as! ProductoViewController
            
            destino.enviada = inventarioL.lista[(indexPath?.row)!]
        }
    }
        
}
    

