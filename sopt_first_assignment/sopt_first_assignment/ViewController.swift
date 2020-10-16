//
//  ViewController.swift
//  sopt_first_assignment
//
//  Created by JUEUN KIM on 2020/10/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var loginBtn: UIButton!
    
    var login : Bool?
    var part : String?
    var name : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchupLogin(_ sender: Any) {
        guard let nv = self.storyboard?.instantiateViewController(identifier: "UINavigationController") else { return }
        
        self.present(nv, animated: false, completion: nil)
    }
    
    func setInfo() {
        if login == true{
            self.partLabel.text = self.part
            self.welcomeLabel.text = "\(self.name!)님 반갑습니다."
            welcomeLabel.sizeToFit()
            
        }
    }

}

