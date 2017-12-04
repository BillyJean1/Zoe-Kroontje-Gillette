//
//  ViewController.swift
//  FirebaseSocialMediaLogins
//
//  Created by mac on 04-12-17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit
import GoogleSignIn
import TwitterKit
class ViewController: UIViewController, FBSDKLoginButtonDelegate, GIDSignInDelegate, GIDSignInUIDelegate {

    
    @IBOutlet weak var fbLoginButton: FBSDKLoginButton!
    @IBOutlet weak var twitterLoginButton: TWTRLogInButton!
    @IBOutlet weak var googleLoginButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Facebook
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
        //Twitter
        twitterLoginButton.logInCompletion = { session, error in
            if (session != nil) {
                print("signed in as \(session?.userName ?? "")");
            } else {
                print("error");
            }
        }
        // Google
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
        GIDSignIn.sharedInstance().delegate = self
    }
    
    // Facebook Login
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("Facebook did log in.")
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Facebook did log out.")
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError?) {
        if let error = error {
            print(error.localizedDescription)
            return
        }
    }
    
    // Google
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!,
              withError error: Error!) {
        if (error) != nil {
        } else {
            // DATA!
            print(user.profile.email)
            print(user.profile.name)
        }
    }
    @IBAction func googleSignin(_ sender: GIDSignInButton) {
        GIDSignIn.sharedInstance().signIn()
    }
    
}

