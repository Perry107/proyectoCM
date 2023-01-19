//
//  FifthViewController.swift
//  proyectoCM2
//
//  Created by alumno on 18/01/23.
//

import UIKit

class FifthViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tablaOfertas: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Ofertas"
        
        tablaOfertas.delegate = self
        tablaOfertas.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print(ofertasL.lista.count)
        return ofertasL.lista.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaO", for: indexPath)
        cell.textLabel?.text = ofertasL.lista[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarO" {
            let indexPath = tablaOfertas.indexPathForSelectedRow
            
            let destino = segue.destination as! ProductoViewController
            
            destino.enviada = ofertasL.lista[(indexPath?.row)!]
        }
    }

    
    

}
