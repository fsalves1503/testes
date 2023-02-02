//
//  ViewController.swift
//  testes
//
//  Created by MAC on 11/01/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
        
    @IBOutlet weak var senha: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == name {
            email.becomeFirstResponder()}
            if textField == email {
                senha.becomeFirstResponder()
            }
         else if textField == senha{
print("Enviando dados ao servidor")
            textField.resignFirstResponder()
        }
        
        
        
        return true
        
        
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return !textField.text!.isEmpty    }
    
}

