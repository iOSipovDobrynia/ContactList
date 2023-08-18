//
//  PersonsInformationTableViewController.swift
//  ContactList
//
//  Created by Goodwasp on 17.08.2023.
//

import UIKit

class PersonsInformationTableViewController: UITableViewController {
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("PersonsInformationTableViewController viewDidLoad")
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        cell.contentConfiguration = content
        
        return cell
    }
}
