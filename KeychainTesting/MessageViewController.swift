//
//  messageViewController.swift
//  KeychainTesting
//
//  Created by Nicholas Kearns on 6/10/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit
import KeychainAccess

class MessageViewController: UIViewController {
    
    
    @IBOutlet weak var revealMessageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let keychain = Keychain()
        print(keychain["message"])
        let keychainMessage = keychain[string: "message"]
        self.revealMessageLabel.text = "test"
//        self.revealMessageLabel.text = keychainMessage
        // Do any additional setup after loading the view.
    }
    
    
    
}
