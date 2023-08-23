//
//  PersonWithCustomCellTableViewController.swift
//  ContactList
//
//  Created by Goodwasp on 23.08.2023.
//

import UIKit

class PersonWithCustomCellTableViewController: UITableViewController {
    var persons: [Person] = []
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].contactInformation.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.contactInformation[indexPath.row]
        case 1:
            content.text = person.contactInformation[indexPath.row]
        default:
            break
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
