//
//  PersonsInformationTableViewController.swift
//  ContactList
//
//  Created by Goodwasp on 17.08.2023.
//

import UIKit

final class PersonsInformationTableViewController: UITableViewController {
    // MARK: - Public properties
    var persons: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].contactInformation.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        } else if indexPath.row == 1 {
            content.text = person.email
            content.image = UIImage(systemName: "envelope")

        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
