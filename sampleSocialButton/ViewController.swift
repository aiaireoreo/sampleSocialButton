//
//  ViewController.swift
//  sampleSocialButton
//
//  Created by AI Matsubara on 2016/05/03.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    //あとからFBボタンも作るので混同しないよう名前をつける
    @IBOutlet weak var twitterBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapTwitterBtn(sender: UIButton) {
        
        //print("押されたよ")
        //ボタンを作ったらまず押されたよと反応があるか確認
        
        var twitterVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        twitterVC.setInitialText("つぶやくよ")
        presentViewController(twitterVC, animated: true, completion: nil)
    }
    
    //TODO:FBのシェアボタンを作ろう
    @IBAction func tapFacebookBtn(sender: UIButton) {
        
        var facebookVC =
            SLComposeViewController(forServiceType:
            SLServiceTypeFacebook)
        facebookVC.setInitialText("フェイスブックだよ")
        presentViewController(facebookVC, animated: true, completion: nil)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

