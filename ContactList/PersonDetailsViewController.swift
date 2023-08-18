//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Goodwasp on 18.08.2023.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "phone: " + person.phone
        emailLabel.text = "email: " + person.email
    }
}
