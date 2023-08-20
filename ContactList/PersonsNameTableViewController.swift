//
//  PersonsNameTableViewController.swift
//  ContactList
//
//  Created by Goodwasp on 17.08.2023.
//

import UIKit

class PersonsNameTableViewController: UITableViewController {
    // MARK: - Public properties
    var persons: [Person]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "name", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else {
            return
        }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        personDetailsVC.person = persons[indexPath.row]
    }
}
