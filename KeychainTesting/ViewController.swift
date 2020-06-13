//
//  ViewController.swift
//  KeychainTesting
//
//  Created by Nicholas Kearns on 6/10/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit
import KeychainAccess

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var revealButton: UIButton!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        let keychain = Keychain()
        keychain["message"] = messageTextField.text!
        let allKeys = keychain.allKeys()
        print(allKeys)
    }
    
    
    @IBAction func revealButtonTapped(_ sender: Any) {
        let keychain = Keychain()
        keychain["message"] = messageTextField.text!
        let messageVC = storyboard?.instantiateViewController(withIdentifier: "messageVC") as! MessageViewController
        navigationController?.pushViewController(messageVC, animated: true)
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        let keychain = Keychain()
        keychain["message"] = nil
        print(keychain["message"])
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let keychain = Keychain()
        keychain["message"] = textField.text
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //    func textFieldDidEndEditing(_ textField: UITextField) {
    //        keychain["message"] = textField.text
    //
    //    }
    
}


