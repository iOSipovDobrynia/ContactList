//
//  HeaderTableViewCell.swift
//  ContactList
//
//  Created by Goodwasp on 23.08.2023.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    
    @IBAction func phoneButtonPressed() {
        print("Calling \(nameLabel.text ?? "") \(lastNameLabel.text ?? "") ")
    }
}
