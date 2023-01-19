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
        inventarioL.add(producto: jugo)
        inventarioL.add(producto: mayonesa)
        inventarioL.add(producto: cafe)
        inventarioL.add(producto: cocaCola)
        inventarioL.add(producto: cereal)
        inventarioL.add(producto: atun)
        inventarioL.add(producto: leche)
        inventarioL.add(producto: sopa)
        inventarioL.add(producto: frijoles)
        
        inventarioL.add(producto: celular)
        inventarioL.add(producto: tele)
        inventarioL.add(producto: audifonos)
        inventarioL.add(producto: tableta)
        inventarioL.add(producto: lapiz)
        inventarioL.add(producto: reloj)
        inventarioL.add(producto: laptop)
        inventarioL.add(producto: impresora)
        inventarioL.add(producto: mouse)
        inventarioL.add(producto: teclado)
        
        inventarioL.add(producto: plumones)
        inventarioL.add(producto: colores)
        inventarioL.add(producto: lapicera)
        inventarioL.add(producto: calculadora)
        inventarioL.add(producto: cuaderno)
        inventarioL.add(producto: plumas)
        inventarioL.add(producto: organizador)
        inventarioL.add(producto: agenda)
        inventarioL.add(producto: tijeras)
        inventarioL.add(producto: hojas)
        
        novedadesL.add(producto: cocaCola)
        novedadesL.add(producto: mouse)
        novedadesL.add(producto: celular)
        novedadesL.add(producto: calculadora)
        novedadesL.add(producto: jugo)
        novedadesL.add(producto: reloj)
        
        
        for producto in inventarioL.lista{
            if(producto.categoria == 2){
                categoria1.add(producto: producto)
            }
        }
        
        for producto in inventarioL.lista{
            if(producto.categoria == 1){
                categoria2.add(producto: producto)
            }
        }
        
        for producto in inventarioL.lista{
            if(producto.categoria == 3){
                categoria3.add(producto: producto)
            }
        }

        tablaInicio.delegate = self
        tablaInicio.dataSource = self
        
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return novedadesL.lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellI = tableView.dequeueReusableCell(withIdentifier: "celdaI", for: indexPath)
        cellI.textLabel?.text = novedadesL.lista[indexPath.row].name
        cellI.imageView?.image = UIImage(named: novedadesL.lista[indexPath.row].imagen)
        return cellI
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar"{
            let indexPath = tablaInicio.indexPathForSelectedRow
            
            let destino = segue.destination as! ProductoViewController
            
            destino.enviada = novedadesL.lista[(indexPath?.row)!]
        }
    }
        
}
    

