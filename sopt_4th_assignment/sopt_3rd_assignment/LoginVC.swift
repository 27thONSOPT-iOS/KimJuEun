//
//  LoginVC.swift
//  sopt_3rd_assignment
//
//  Created by JUEUN KIM on 2020/11/09.
//

import UIKit

class LoginVC: UIViewController{
    
    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        partTextField.delegate = self
        nameTextField.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc func keyboardWillShow(_ sender: Notification) {
            self.view.frame.origin.y = -150 // Move view 150 points upward
        }

    @objc func keyboardWillHide(_ sender: Notification) {
            self.view.frame.origin.y = 0 // Move view to original position
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
       endMyTextEditing()
   }

    @IBAction func touchLoginBtn(_ sender: Any) {
        print("button")
        guard let tabBarController = self.presentingViewController as? UITabBarController else {
                    return
        }
        
        guard let FirstVC = tabBarController.viewControllers![0] as?FirstVC else {
            return
        }
        FirstVC.imageName = partTextField.text!
        self.dismiss(animated: false, completion: nil)
        print("dismiss")
    }
}

extension LoginVC:UITextFieldDelegate{
    func endMyTextEditing(){
        partTextField.endEditing(true)
        nameTextField.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        endMyTextEditing()
        return true
       
    }
}

