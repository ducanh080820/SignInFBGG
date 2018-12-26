//
//  ViewController.swift
//  SignInFBGG
//
//  Created by Duc Anh on 12/26/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit
import FacebookLogin
import GoogleSignIn
class ViewController: UIViewController, GIDSignInUIDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let loginButton = LoginButton(readPermissions: [.publicProfile])
        view.addSubview(loginButton)
        //frame are obselete, please use contraints instead because its 2016 after all
        loginButton.frame = CGRect(x: 16, y: 50, width: view.frame.width-32, height: 50)
//        loginButton.center = view.center
        
        
        GIDSignIn.sharedInstance()?.uiDelegate = self
        let button1 = GIDSignInButton()
        view.addSubview(button1)
        button1.frame = CGRect(x: 16, y: 120, width: view.frame.width-32, height: 60)
    }

    func sign(_ signIn: GIDSignIn!, present viewController: UIViewController!) {
        self.present(viewController, animated: true, completion: nil)
    }
    
    func sign(_ signIn: GIDSignIn!, dismiss viewController: UIViewController!) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

