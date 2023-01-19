//
//  FourthViewController.swift
//  proyectoCM2
//
//  Created by alumno on 18/01/23.
//

import UIKit

class FourthViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tablaPapeleria: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Papeleria"
        
        tablaPapeleria.dataSource = self
        tablaPapeleria.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoria3.lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaP", for: indexPath)
        cell.textLabel?.text = categoria3.lista[indexPath.row].name
        cell.imageView?.image = UIImage(named: categoria3.lista[indexPath.row].imagen)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarP" {
            let indexPath = tablaPapeleria.indexPathForSelectedRow
            
            let destino = segue.destination as! ProductoViewController
            
            destino.enviada = categoria3.lista[(indexPath?.row)!]
        }
    }
    

}
