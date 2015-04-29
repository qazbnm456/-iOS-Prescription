//
//  AboutController.swift
//  prescription
//
//  Created by LeoSU on 2015/4/26.
//  Copyright (c) 2015年 Leo. All rights reserved.
//

import UIKit

class AboutController: UIViewController {

    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var label2:UILabel!
    @IBOutlet weak var label2_1:UILabel!
    @IBOutlet weak var label3:UILabel!
    @IBOutlet weak var label3_1:UILabel!
    @IBOutlet weak var label4:UILabel!
    @IBOutlet weak var label4_1:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.label.text = "只要循著以下步驟送出處方箋，我們就會聯繫您，並且提供最好的服務！瑞士藥師藥局感謝您。"
        
        let underlineAttriString2 = NSAttributedString(string: "1. 上傳處方箋", attributes: [NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleSingle.rawValue, NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 19)!])
        
        self.label2.attributedText = underlineAttriString2
        self.label2_1.text = "進入\"上傳處方箋\"頁面，填寫基本聯絡資訊之後，上傳一張清楚的處方箋照片。"
        
        let underlineAttriString3 = NSAttributedString(string: "2. 專業藥師主動聯繫您", attributes: [NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleSingle.rawValue, NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 19)!])
        
        self.label3.attributedText = underlineAttriString3
        self.label3_1.text = "收到您上傳的處方箋後，我們將主動聯繫您，確認您的需求，核對一些資料。"
        
        let underlineAttriString4 = NSAttributedString(string: "3. 約定時間到藥局取藥", attributes: [NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleSingle.rawValue, NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 19)!])
        
        self.label4.attributedText = underlineAttriString4
        self.label4_1.text = "專業的藥師將會和您約定一個您方便的時間前來藥局取藥。"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
