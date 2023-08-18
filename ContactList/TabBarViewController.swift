//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Goodwasp on 18.08.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    // MARK: - Private properties
    private let persons = Person.getRandomPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("TabBarViewController viewDidLoad")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.source as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let personNameVC = viewController as? PersonsNameTableViewController {
                personNameVC.persons = persons
            } else if let personInfoVC = viewController as? PersonsInformationTableViewController {
                personInfoVC.persons = persons
            }
        }
    }
    
}
