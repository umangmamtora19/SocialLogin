

import Foundation
import UIKit
import FBSDKLoginKit


extension SocialLogin {
    //MARK: Call this method to login with google
    public func facebookLogin(view: UIViewController, completion: @escaping(Bool, String, UserModelSocial?) -> Void) {
        loginManager.logOut() 
        if let token = AccessToken.current,!token.isExpired {
            loginManager.logOut()
        }else{
            loginManager.logIn(permissions: ["public_profile", "email"], from: view) { (result, error) in
                // Check for error
                guard error == nil else {
                    completion(false, error!.localizedDescription, nil)
                    return
                }
                
                // Check for cancel
                guard let result = result, !result.isCancelled else {
                    print("User cancelled login")
                    completion(false, "User cancelled login", nil)
                    return
                }
                
                let requestMe = GraphRequest.init(graphPath: "me", parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"])
                requestMe.start { connection, result, error in
                    if (error == nil) {
                        if let fatchDict: [String : Any] = result as? [String : Any] {
                            //  let fatchDict = result as? [String : Any]
                            var dict = [String:String]()
                            dict["social_id"] = fatchDict["id"] as? String ?? ""
                            dict["email"] = fatchDict["email"] as? String ?? ""
                            dict["social_platform"] = "facebook"
                            dict["first_name"] = fatchDict["first_name"] as? String ?? ""
                            dict["last_name"] = fatchDict["last_name"] as? String ?? ""
                            dict["name"] = fatchDict["name"] as? String ?? ""
                            
                            let jsonData = try? JSONEncoder().encode(dict)
                            
                            let usermodel = try? JSONDecoder().decode(UserModelSocial.self, from: jsonData ?? Data())
                            completion(true, "Facebook Login Successfully", usermodel)
                        }
                        else {
                            completion(false, "Data not found", nil)
                        }
                    }
                    else {
                        completion(false, error?.localizedDescription ?? "", nil)
                    }
                }
            }
        }
    }
}
