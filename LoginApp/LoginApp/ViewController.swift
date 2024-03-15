//
//  ViewController.swift
//  LoginApp
//
//  Created by Alumno on 13/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func forgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameorPassword", sender: sender)
        
    }
    @IBAction func forgotUsernameAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameorPassword", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    
    }
}

