//
//  SecondViewController.swift
//  proyectoCM2
//
//  Created by alumno on 18/01/23.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tablaTecno: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
  
        title = "Tecnologia"
        
        tablaTecno.delegate = self
        tablaTecno.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoria1.lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaT", for: indexPath)
        cell.textLabel?.text = categoria1.lista[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarT" {
            let indexPath = tablaTecno.indexPathForSelectedRow
            
            let destino = segue.destination as! ProductoViewController
            
            destino.enviada = categoria1.lista[(indexPath?.row)!]
        }
    }


}
