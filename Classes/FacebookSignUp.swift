//
//  FacebookSignUp.swift
//  CreateAppleSignedDemo
//
//  Created by Vikas on 14/11/22.
//

import Foundation
import UIKit
//import FBSDKLoginKit

//class FacebookSignup:NSObject {
//    static let shared = FacebookSignup()
//    let loginManager = LoginManager()
//    typealias Completionhandler = (Bool,String,UserModelSocial?) -> Void
//    var completionOuter : Completionhandler?
//    var view : UIViewController?
//    var usermodel: UserModelSocial! = nil
//
//    //MARK: call facebooklogin mathod
//    func facebookLogin(view:UIViewController?) {
//        loginManager.logOut()
//        URLCache.shared.removeAllCachedResponses()
//        URLCache.shared.diskCapacity = 0
//        URLCache.shared.memoryCapacity = 0
//        if let token = AccessToken.current,!token.isExpired {
//            loginManager.logOut()
//        }else{
//            loginManager.logIn(permissions: ["public_profile", "email"], from: view) { (result, error) in
//
//                // Check for error
//                guard error == nil else {
//                    // Error occurred
//                    print(error!.localizedDescription)
//                    // call back
//                    self.completionOuter!(false,error!.localizedDescription,self.usermodel)
//                    return
//                }
//
//                // Check for cancel
//                guard let result = result, !result.isCancelled else {
//                    print("User cancelled login")
//                    // call back
//                    self.completionOuter!(false,"User cancelled login",self.usermodel)
//                    return
//                }
//
//                let requestMe = GraphRequest.init(graphPath: "me", parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"])
//                requestMe.start { connection, result, error in
//                    if (error == nil){
//                        if let fatchDict: [String : Any] = result as? [String : Any] {
//                            //  let fatchDict = result as? [String : Any]
//                            print(result!)
//
//                            var dict = [String:String]()
//                            dict["social_id"] = fatchDict["id"] as? String ?? ""
//                            dict["email"] = fatchDict["email"] as? String ?? ""
//                            dict["social_platform"] = "facebook"
//                            dict["first_name"] = fatchDict["first_name"] as? String ?? ""
//                            dict["last_name"] = fatchDict["last_name"] as? String ?? ""
//                            dict["name"] = fatchDict["name"] as? String ?? ""
//
//                            let jsonData = try? JSONEncoder().encode(dict)
//                            self.usermodel = try? JSONDecoder().decode(UserModelSocial.self, from: jsonData ?? Data())
//                            // call back
//                            self.completionOuter!(true,"",self.usermodel)
//                        }
//                        else {
//                            // call back
//                            self.completionOuter!(false,"",self.usermodel)
//                        }
//                    }
//                    else {
//                        // call back
//                        self.completionOuter!(false,"",self.usermodel)
//                    }//
//                }
//
//            }
//        }
//    }
//}
