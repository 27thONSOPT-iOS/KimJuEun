//
//  ThirdViewController.swift
//  sopt_first_assignment
//
//  Created by JUEUN KIM on 2020/10/12.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var signPartLabel: UITextField!
    @IBOutlet weak var signBornLabel: UITextField!
    @IBOutlet weak var signNameLabel: UITextField!

    
    @IBOutlet weak var signBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func TouchUpSignBtn(_ sender: Any) {
        guard let scv = self.navigationController?.viewControllers[0] as? SecondViewController else { return }
        
        scv.name = self.signNameLabel.text
        scv.part = self.signPartLabel.text
        
        self.navigationController?.popViewController(animated: true)
        

        
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
