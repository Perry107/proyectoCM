//
//  SideMenu.swift
//  proyectoCM
//
//  Created by alumno on 17/01/23.
//

import Foundation
import UIKit

protocol MenuControllerDelegate {
    func didSelectMenuItem(named: SideMenuItem)
}

enum SideMenuItem: String, CaseIterable{
    case home = "Home"
    case menu1 = "Info"
    case menu2 = "Config"
}

class MenuController: UITableViewController{
    
    public var delegate: MenuControllerDelegate?
    private let menuItems: [SideMenuItem]
    
    init(with menuItems: [SideMenuItem]){
        self.menuItems = menuItems
        super.init(nibName: nil, bundle: nil)
        //tableView.backgroundColor = .darkGray
        //view.backgroundColor = .darkGray
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.backgroundColor = .darkGray
        //view.backgroundColor = .darkGray
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = menuItems[indexPath.row].rawValue
        //cell.textLabel?.textColor = .white
        //cell.backgroundColor = .darkGray
        //cell.contentView.backgroundColor = .darkGray
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedItem = menuItems[indexPath.row]
        delegate?.didSelectMenuItem(named: selectedItem)
    }
}
