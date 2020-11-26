//
//  SignupVC.swift
//  Sopt_6th_Seminar
//
//  Created by JUEUN KIM on 2020/11/26.
//

import UIKit

class SignupVC: UIViewController {

    let identifier = "SignupVC"
    
    @IBOutlet var emailText: UITextField!
    @IBOutlet var passwordText: UITextField!
    @IBOutlet var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    @IBAction func touchUpSignUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
        guard let email = emailText.text,
              let password = passwordText.text,
              let userName = nameText.text else{
            return
        }
        AuthService.shared.signUp(email: email, password: password, username:userName) { (NetworkResult) in
            switch NetworkResult{
            case .success(let data) :
                if let data = data as? SignupData{
                    self.simpleAlert(title: "회원 가입 성공", message: "\(data)님 회원 가입 성공!")
                    UserDefaults.standard.set(data.userName, forKey: "userName")
                }
                print("success")
            case .requestNullValues:
                self.simpleAlert(title: "회원 가입 실패", message: "이미 존재하는 이메일 입니다.")
            
            case .serverErr:
                print("serverErr")
                
            default:
                print("default")
            }
            
        }
    }
}
