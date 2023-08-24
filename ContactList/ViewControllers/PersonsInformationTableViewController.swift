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
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let dummyViewHeight = CGFloat(40)
//        self.tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.bounds.size.width, height: dummyViewHeight))
//        self.tableView.contentInset = UIEdgeInsets(top: -dummyViewHeight, left: 0, bottom: 0, right: 0)
//    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].contactInformation.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension PersonsInformationTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let frame = CGRect(
            x: 16,
            y: 3,
            width: tableView.frame.width,
            height: 21
        )
        let fullnameLabel = UILabel(frame: frame)
        let contentView = UIView()
        contentView.addSubview(fullnameLabel)
        fullnameLabel.text = persons[section].fullname
        fullnameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        return contentView
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .secondarySystemFill
    }
}
