//
//  ViewController.swift
//  proyectoCM
//
//  Created by alumno on 16/01/23.
//

import SideMenu
import UIKit

class ViewController: UIViewController, MenuControllerDelegate {
    
    private var sideMenu:SideMenuNavigationController?
    
    private let menuControler1 = Menu1ViewController()
    private let menuControler2 = Menu2ViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        let menu = MenuController(with: SideMenuItem.allCases)
        menu.delegate = self
        sideMenu = SideMenuNavigationController(rootViewController: menu)
        sideMenu?.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        
        addChildControllers()
        // Do any additional setup after loading the view.
    }
    
    private func addChildControllers(){
        addChild(menuControler1)
        addChild(menuControler2)
        view.addSubview(menuControler1.view)
        view.addSubview(menuControler2.view)
        menuControler1.view.frame = view.bounds
        menuControler2.view.frame = view.bounds
        
        menuControler1.didMove(toParent: self)
        menuControler2.didMove(toParent: self)
        
        menuControler1.view.isHidden = true
        menuControler2.view.isHidden = true
        
    }

    @IBAction func didTapMenuButtom(){
        present(sideMenu!, animated: true)
    }
    
    func didSelectMenuItem(named: SideMenuItem) {
        sideMenu?.dismiss(animated: true, completion: {[weak self] in
            
            self?.title = named.rawValue
            
            switch named{
            case .home:
                self?.menuControler2.view.isHidden = true
                self?.menuControler1.view.isHidden = true
            case .menu1:
                self?.menuControler2.view.isHidden = true
                self?.menuControler1.view.isHidden = false
            case .menu2:
                self?.menuControler2.view.isHidden = false
                self?.menuControler1.view.isHidden = true
            }
            
         //   if named == "Home"{
         //       self?.menuControler1.view.isHidden = true
         //       self?.menuControler2.view.isHidden = true
         //   }
         //   else if named == "Info"{
         //       self?.menuControler1.view.isHidden = true
         //       self?.menuControler2.view.isHidden = false
         //   }
         //   else if named == "Settings"{
         //       self?.menuControler1.view.isHidden = false
         //       self?.menuControler2.view.isHidden = true
         //   }
        })
    }

}


    
