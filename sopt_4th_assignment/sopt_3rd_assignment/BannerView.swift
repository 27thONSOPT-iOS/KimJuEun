//
//  BannerView.swift
//  sopt_3rd_assignment
//
//  Created by JUEUN KIM on 2020/11/06.
//

import UIKit

class BannerView: UICollectionReusableView {
    static let identifier = "BannerView"
    
    @IBOutlet weak var bigLabel: UILabel!
    @IBOutlet weak var smallLabel: UILabel!
    @IBOutlet weak var lineImageView: UIImageView!
    
        
//    func set() {
//        bigLabel.text  = "SOPT + NETWORKING"
//        smallLabel.text = "대학생 연합 IT 창업 동아리의 네트워킹을 위한 플랫폼입니다."
//        lineImageView.image = UIImage(named: "4")
//    }
}
