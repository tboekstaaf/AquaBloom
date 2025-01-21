//
//  ViewController.swift
//  AquaBloom
//
//  Created by Tanisha Boekstaaf on 1/18/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet var textField: UITextField! //bound to the front end.... somwhere.... idk
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        usernameTF.resignFirstResponder()
        passwordTF.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        self.usernameTF.addPaddingToTextField()
        
        self.passwordTF.addPaddingToTextField()
    }


}
extension UITextField {
    func addPaddingToTextField () {
        let paddingView: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        self.leftView = paddingView;
        self.leftViewMode = .always;
        self.rightView = paddingView;
        self.rightViewMode = .always;
        
    }
    
}
