//
//  ThirdViewController.swift
//  proyectoCM2
//
//  Created by alumno on 18/01/23.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tablaMerca: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Mercado"
        
        tablaMerca.delegate = self
        tablaMerca.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoria2.lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaM", for: indexPath)
        cell.textLabel?.text = categoria2.lista[indexPath.row].name
        cell.imageView?.image = UIImage(named: categoria2.lista[indexPath.row].imagen)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarM" {
            let indexPath = tablaMerca.indexPathForSelectedRow
            
            let destino = segue.destination as! ProductoViewController
            
            destino.enviada = categoria2.lista[(indexPath?.row)!]
        }
    }

}
