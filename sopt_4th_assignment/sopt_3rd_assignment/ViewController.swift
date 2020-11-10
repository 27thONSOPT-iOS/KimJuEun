//
//  ViewController.swift
//  sopt_3rd_assignment
//
//  Created by JUEUN KIM on 2020/11/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var blackBack: UIImageView!
    @IBOutlet weak var soptCollectionView: UICollectionView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var mkprofile: UIButton!
    var sopt: [String] = ["juhyeok", "nayeon", "peace","heesoo", "saeeun","wool", "hansol","minju", "younghun", "minguru", "yeonjeong", "junyeop"]
    var soptIntro: [String] = ["#hereis#아요#내꿈은#사과농장#ENFP"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soptCollectionView.delegate = self
        soptCollectionView.dataSource = self
        setPosition(soptCollectionView)
        
    }

}
extension ViewController:UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

            let headerview = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "BannerView", for: indexPath) as! BannerView
         
            return headerview
        }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sopt.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IntroCell.identifier, for: indexPath)as? IntroCell else { return UICollectionViewCell()}

        cell.setfImage(imageName: sopt[indexPath.item])
        cell.fNameLabel.text = sopt[indexPath.item]
        cell.fIntroLabel.text = soptIntro[0]
        
        return cell
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        setPosition(scrollView)
    }

    func setPosition(_ scrollView:UIScrollView) {
        if scrollView.contentOffset.y >= 20 {
            topView.alpha = 0
            self.view.frame.origin.y = -88
            self.soptCollectionView.frame = CGRect(x: 0, y: -88, width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            self.soptCollectionView.frame = CGRect(x: 0, y: 0, width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+88)

        }else if scrollView.contentOffset.y <= 200 {
            self.view.frame.origin.y = 0
            topView.alpha = 1
            }
        }
    }


extension ViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 375, height: 420)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: (collectionView.frame.size.width/2), height: 230)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    

}
