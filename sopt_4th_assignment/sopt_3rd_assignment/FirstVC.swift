//
//  FirstVC.swift
//  sopt_3rd_assignment
//
//  Created by JUEUN KIM on 2020/11/09.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var partImageView: UIImageView!
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var loginBtn: UIButton!
    
    var imageName = "ios"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        setInfo()
    }

    @IBAction func touchLoginBtn(_ sender: Any) {
        guard let LoginVC = self.storyboard?.instantiateViewController(identifier: "LoginVC") else {return}
        LoginVC.modalPresentationStyle = .fullScreen
        self.present(LoginVC, animated: true, completion: nil)
        
    }
    
    func setInfo() {
        partImageView.image = UIImage(named: imageName)
        partLabel.text = imageName
    }
}
