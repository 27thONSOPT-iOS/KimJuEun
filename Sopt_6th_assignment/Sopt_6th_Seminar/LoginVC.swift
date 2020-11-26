//
//  LoginVC.swift
//  Sopt_6th_Seminar
//
//  Created by JUEUN KIM on 2020/11/21.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func touchupSignUp(_ sender: Any) {
        let signUpStoryboard = UIStoryboard(name: "SignUp", bundle: nil)
        
        if let dvc = signUpStoryboard.instantiateViewController(identifier: "SignupVC") as? SignupVC{
            dvc.modalPresentationStyle = .fullScreen
            self.present(dvc, animated: true, completion: nil )
        }
    }
    @IBAction func touchUpLogin(_ sender: Any) {
        guard let emailText = emailTextField.text,
              let passwordText = passwordTextField.text else {
            return
        }
        AuthService.shared.signIn(email: emailText, password: passwordText) { (NetworkResult) in
            switch NetworkResult{
            case .success(let data) :
                if let data = data as? SigninData{
                    self.simpleAlert(title: "로그인성공", message: "\(data.userName)님 로그인 성공!")
                    UserDefaults.standard.set(data.userName, forKey: "userName")
                }
                print("success")
            case .requestErr(let msg):
                if let message = msg as? String {
                    self.simpleAlert(title: "로그인 실패", message: message)
                }
                print("requestErr")
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            default:
                print("default")
            }
        }
        }
        
    }
