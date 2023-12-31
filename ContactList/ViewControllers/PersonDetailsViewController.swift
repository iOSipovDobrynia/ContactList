//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Goodwasp on 18.08.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public properties
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullname
        phoneLabel.text = "phone: " + person.phone
        emailLabel.text = "email: " + person.email
    }
}
