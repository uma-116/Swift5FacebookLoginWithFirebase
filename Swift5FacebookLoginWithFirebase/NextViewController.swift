//
//  NextViewController.swift
//  Swift5FacebookLoginWithFirebase
//
//  Created by Yuma Sato on 2020/06/07.
//  Copyright © 2020 Yuma Sato. All rights reserved.
//

import UIKit
import SDWebImage

class NextViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var userNameLAbel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.object(forKey: "pictureURLString") != nil || (UserDefaults.standard.object(forKey: "displayName") != nil){
            
            let imageString = UserDefaults.standard.object(forKey: "pictureURLString") as! String
            
            profileImageView.sd_setImage(with: URL(string:imageString), completed: nil)
            
            profileImageView.layer.cornerRadius = 20.0
            
            let displayName = UserDefaults.standard.object(forKey: "displayName") as! String
            
            userNameLAbel.text = displayName
        }
        
        
        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
        
    }

}
