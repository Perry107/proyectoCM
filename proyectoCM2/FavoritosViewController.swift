//
//  FavoritosViewController.swift
//  proyectoCM2
//
//  Created by alumno on 19/01/23.
//

import UIKit

class FavoritosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tablaFavoritos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Favoritos"
        
        tablaFavoritos.delegate = self
        tablaFavoritos.dataSource = self
        

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritosL.lista.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaF", for: indexPath)
        cell.textLabel?.text = favoritosL.lista[indexPath.row].name
        cell.imageView?.image = UIImage(named: favoritosL.lista[indexPath.row].imagen)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarFav" {
            let indexPath = tablaFavoritos.indexPathForSelectedRow
            
            let destino = segue.destination as! ProductoViewController
            
            destino.enviada = favoritosL.lista[(indexPath?.row)!]
        }
    }
    
    

}
