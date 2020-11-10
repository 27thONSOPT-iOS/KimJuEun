//
//  IntroCell.swift
//  sopt_3rd_assignment
//
//  Created by JUEUN KIM on 2020/11/06.
//

import UIKit

class IntroCell: UICollectionViewCell {
    
    @IBOutlet weak var fImageView: UIImageView!
    @IBOutlet weak var fNameLabel: UILabel!
    @IBOutlet weak var fIntroLabel: UILabel!
    
    
    static let identifier = "IntroCell"
    
    func setfImage(imageName: String){
        fImageView.image = UIImage(named: imageName)
    }

}
