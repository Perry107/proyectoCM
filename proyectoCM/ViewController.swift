//
//  ViewController.swift
//  proyectoCM
//
//  Created by alumno on 16/01/23.
//

import SideMenu
import UIKit

class ViewController: UIViewController {
    
    private let sideMenu = SideMenuNavigationController(rootViewController: UIViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenu.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapMenuButtom(){
        present(sideMenu, animated: true)
    }

}

class MenuController: UITableViewController{
    private let menuItems: [String]
    
    init(with menuItems: [String]){
        self.menuItems = menuItems
        super.init(nibName: nil, bundle: nil)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = menuItems[indexPath.row]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
}
    
