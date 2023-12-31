//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Goodwasp on 18.08.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    // MARK: - Private properties
    private let persons = Person.getRandomPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupPersonDataForViewControllers()
    }
    
    // MARK: - Private func
    private func setupPersonDataForViewControllers() {
        guard let viewControllers = viewControllers else { return }
        
        viewControllers.forEach { viewController in
            guard let navigationVC = viewController as? UINavigationController else {
                return
            }
            if let personNameVC = navigationVC.topViewController as? PersonsNameTableViewController {
                personNameVC.persons = persons
            } else if let personInfoVC = navigationVC.topViewController as? PersonsInformationTableViewController {
                personInfoVC.persons = persons
            } else if let personWithCustonCellVC = navigationVC.topViewController as? PersonWithCustomCellTableViewController {
                personWithCustonCellVC.persons = persons
            }
        }
    }
}
