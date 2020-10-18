//
//  ViewController.swift
//  sopt_second_assignment
//
//  Created by JUEUN KIM on 2020/10/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var image9: UIImageView!
    @IBOutlet weak var image10: UIImageView!
    @IBOutlet weak var image11: UIImageView!
    @IBOutlet weak var image12: UIImageView!
    
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var name3: UILabel!
    @IBOutlet weak var name4: UILabel!
    @IBOutlet weak var name5: UILabel!
    @IBOutlet weak var name6: UILabel!
    @IBOutlet weak var name7: UILabel!
    @IBOutlet weak var name8: UILabel!
    @IBOutlet weak var name9: UILabel!
    @IBOutlet weak var name10: UILabel!
    @IBOutlet weak var name11: UILabel!
    @IBOutlet weak var name12: UILabel!

    @IBOutlet weak var hash1: UILabel!
    @IBOutlet weak var hash2: UILabel!
    @IBOutlet weak var hash3: UILabel!
    @IBOutlet weak var hash4: UILabel!
    @IBOutlet weak var hash5: UILabel!
    @IBOutlet weak var hash6: UILabel!
    @IBOutlet weak var hash7: UILabel!
    @IBOutlet weak var hash8: UILabel!
    @IBOutlet weak var hash9: UILabel!
    @IBOutlet weak var hash10: UILabel!
    @IBOutlet weak var hash11: UILabel!
    @IBOutlet weak var hash12: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setImage()
        setName()
        setHash()
        setOption()
    }
    
    func setImage() {
        image1.image = UIImage(named: "juhyeok.png")
        image2.image = UIImage(named: "nayeon.png")
        image3.image = UIImage(named: "peace.png")
        image4.image = UIImage(named: "heesoo.png")
        image5.image = UIImage(named: "saeeun.png")
        image6.image = UIImage(named: "wool.png")
        image7.image = UIImage(named: "hansol.png")
        image8.image = UIImage(named: "minju.png")
        image9.image = UIImage(named: "younghun.png")
        image10.image = UIImage(named: "minguru.png")
        image11.image = UIImage(named: "yeonjeong.png")
        image12.image = UIImage(named: "junyeop.png")
    }
    
    func setName() {
        name1.text = "이주혁"
        name2.text = "김나연"
        name3.text = "손평화"
        name4.text = "유희수"
        name5.text = "박세은"
        name6.text = "한울"
        name7.text = "김한솔"
        name8.text = "배민주"
        name9.text = "최영훈"
        name10.text = "강민구"
        name11.text = "이정현"
        name12.text = "이주엽"
        
    }
    
    func setHash() {
        hash1.text = "#hereis#아요#내꿈은 #사과농장#ENFP"
        hash2.text = "#이제막학기 #여러분들이랑_친해지고_싶어요 #번개스터디환영"
        hash3.text = "#핸드피쓰 #이너피쓰 #배꼽도둑 #헬린이 #sson_peace7"
        hash4.text = "#총무꿈나무 #유총무 #현재_소식중 #풉"
        hash5.text = "#마 #아요는 #처음입니다"
        hash6.text = "#ENFP #STORM #울크박스 #@hwooolll #하늘콜렉터"
        hash7.text = "#고객중심 #고객행동데이터기반한 #UX디자이너#워너비,,"
        hash8.text = "#디팟장 #개자이너 #최종목표는행복"
        hash9.text = "#서팟짱 #솝트3회차 #앱잼_요리_개발자 #UX/UI"
        hash10.text = "#밍맹 #안팟장 #이래뵈도_귀여운거좋아함 #지박령 #허당"
        hash11.text = "#플레이스픽 #ENFJ #기획_디자인_개발_다"
        hash12.text = "#26기서버 #27기웹 #샵이_두개면_어떻게될까? ##"
    }
    
    func setOption() {
//        name1.lineBreakMode = NSLineBreakMode.byCharWrapping
//        name2.lineBreakMode = NSLineBreakMode.byCharWrapping
//        name3.lineBreakMode = NSLineBreakMode.byCharWrapping
//        name4.lineBreakMode = NSLineBreakMode.byCharWrapping
//        name5.lineBreakMode = NSLineBreakMode.byCharWrapping
//        name6.lineBreakMode = NSLineBreakMode.byCharWrapping
        name7.lineBreakMode = NSLineBreakMode.byCharWrapping
        name7.numberOfLines = 0
        name7.sizeToFit()
//        name8.lineBreakMode = NSLineBreakMode.byCharWrapping
//        name9.lineBreakMode = NSLineBreakMode.byCharWrapping
//        name10.lineBreakMode = NSLineBreakMode.byCharWrapping
//        name11.lineBreakMode = NSLineBreakMode.byCharWrapping
//        name12.lineBreakMode = NSLineBreakMode.byCharWrapping
        
        
    }
}

