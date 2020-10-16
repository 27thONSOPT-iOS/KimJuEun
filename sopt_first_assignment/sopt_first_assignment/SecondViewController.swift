//
//  SecondViewController.swift
//  sopt_first_assignment
//
//  Created by JUEUN KIM on 2020/10/12.
//

import UIKit.UIAlertController
class SecondViewController: UIViewController {
    @IBOutlet weak var partTextfield: UITextField!
    @IBOutlet weak var nameTextfield: UITextField!
    
    @IBOutlet var signBtn: UIView!
    @IBOutlet weak var LoginBtn: UIButton!
    
    var part : String?
    var year : Int?
    var name : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpLoginBtn(_ sender: Any) {
    
        guard let fsv = self.presentingViewController as? ViewController else { return }
        
        if self.nameTextfield.text == self.name &&  self.partTextfield.text == self.part{
            self.dismiss(animated: true, completion: nil)
            fsv.login = true
            fsv.name = self.name
            fsv.part = self.part
            fsv.setInfo()
        }
        else { print("다시 확인하고 시도하세요")
            fsv.login = false
        }
    }
    
    @IBAction func touchUpSignBtn(_ sender: Any) {
        
        guard let thv = self.storyboard?.instantiateViewController(identifier: "ThirdViewController")as?ThirdViewController else {
            return }
        
        self.navigationController?.pushViewController(thv, animated: true)
        print("회원가입")
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


