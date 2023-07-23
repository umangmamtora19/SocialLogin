

import Foundation
import UIKit
import GoogleSignIn

//MARK: -  ======== GIDSignInDelegate ========
extension SocialLogin { 
    //MARK: Call this method to login with google
    public func googlesignIn(view: UIViewController, completion: @escaping(Bool, String, UserModelSocial?) -> Void) {
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        GIDSignIn.sharedInstance.signIn(withPresenting: view) { result, error in
            guard error == nil else {
                completion(false, error?.localizedDescription ?? "", nil)
                return
            }
            
            guard let user = result?.user else {
                completion(false, "User data not found", nil)
                return
            }
            
            let emailAddress = user.profile?.email ?? ""
//            let fullName = user.profile?.name ?? ""
            let givenName = user.profile?.givenName ?? ""
            let profilePicUrl = user.profile?.imageURL(withDimension: 320)?.absoluteString ?? ""
            let userID = user.userID ?? ""
            
            let params = ["social_id": userID, "social_type": "Google", "profile": profilePicUrl, "name": givenName, "email": emailAddress]
            let jsonData = try? JSONEncoder().encode(params)
            let usermodel: UserModelSocial = try! JSONDecoder().decode(UserModelSocial.self, from: jsonData ?? Data())

            completion(true,"", usermodel)
        }
    }
}

