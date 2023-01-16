//
//  ThirdViewControler.swift
//  Proyecto3
//
//  Created by Luis Fernando on 3/15/19.
//  Copyright © 2019 Practica3. All rights reserved.
//

import UIKit

class ThirdViewControler: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tabla2: UITableView!
    @IBOutlet weak var Total: UILabel!
    var suma: Float = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ListaCarro.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda2", for: indexPath)
        
        
        cell.textLabel?.text = "\(ListaCarro[indexPath.row].nombre)- \(ListaCarro[indexPath.row].precio)"
        
        return cell
    }
    
    func sumar () {
        suma = 0
        for cont in ListaCarro{
            suma = cont.precio + suma
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sumar()
        Total.text = suma.description
    }
}
