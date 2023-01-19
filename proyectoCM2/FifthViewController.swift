//
//  FifthViewController.swift
//  proyectoCM2
//
//  Created by alumno on 18/01/23.
//

import UIKit

class FifthViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print(favoritosL.lista.count)
        return favoritosL.lista.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaF", for: indexPath)
        cell.textLabel?.text = favoritosL.lista[indexPath.row].name
        
        return cell
    }
    
    @IBOutlet weak var tablaFavoritos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Favoritos"
        
        tablaFavoritos.delegate = self
        tablaFavoritos.dataSource = self
        // Do any additional setup after loading the view.
    }
    

}
