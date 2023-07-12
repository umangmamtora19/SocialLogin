//
//  GoogleSignUp.swift
//  CreateAppleSignedDemo
//
//  Created by Vikas on 14/11/22.
//

import Foundation
import UIKit
//import GoogleSignIn

//class GoogleSignUp:NSObject {
//    let signInConfig = GIDConfiguration(clientID: "797223408057-gg82dka7fp7c3g3jt3im6hgv872fh7dk.apps.googleusercontent.com")
//    static let shared = GoogleSignUp()
//    typealias Completionhandler = (Bool,String,UserModelSocial?) -> Void
//    var completion : Completionhandler?
//    var usermodel: UserModelSocial? = nil
//
//}
////MARK: -  ======== GIDSignInDelegate ========
//extension GoogleSignUp {
//
//    //MARK: call google login mathod
//    func googlesignIn(view:UIViewController) {
////        usermodel = UserModelSocial.init()
//        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: view) { [weak self] user, error in
//            guard error == nil else {
//                //call back
//                self?.completion!(false,"",(self?.usermodel))
//                return
//
//            }
//            guard user == user else {
//                //call back
//                self?.completion!(false,"",(self?.usermodel))
//                return
//            }
//
//            let emailAddress = user?.profile?.email ?? ""
//            let fullName = user?.profile?.name ?? ""
//            let givenName = user?.profile?.givenName ?? ""
//            let profilePicUrl = user?.profile?.imageURL(withDimension: 320)
//            let UserID = user?.userID ?? ""
//
//            let params = ["social_id":UserID,"social_type":"Google","name": user?.profile?.givenName ?? "","email":user?.profile?.email ?? ""]
//            let jsonData = try? JSONEncoder().encode(params)
//            self?.usermodel = try? JSONDecoder().decode(UserModelSocial.self, from: jsonData ?? Data()) //Mapper<UserModelSocial>().map(JSON:params)
//            //call back
//            self?.completion!(true,"",(self?.usermodel))
//
//            //            }
//        }
//    }
//}
//class UserModelSocial: Codable {
//
//    var social_id:String!
//    var social_Type: String!
//    var name: String!
//    var email : String!
//    var error : String!
//
//    enum CodingKeys: String, CodingKey {
//        case social_id = "social_id"
//        case social_Type = "social_Type"
//        case name = "name"
//        case email = "email"
//        case error = "error"
//    }
//
//    required init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        social_id = try values.decodeIfPresent(String.self, forKey: .social_id)
//        social_Type = try values.decodeIfPresent(String.self, forKey: .social_Type)
//        name = try values.decodeIfPresent(String.self, forKey: .name)
//        email = try values.decodeIfPresent(String.self, forKey: .email)
//        error = try values.decodeIfPresent(String.self, forKey: .error)
//    }
//}
