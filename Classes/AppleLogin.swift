//
//  AppleLogin.swift
//  Created by Vikas on 14/11/22.
//

import Foundation
import UIKit
//import AuthenticationServices
//
//
//class AppleLogin:NSObject {
//    static let shared = AppleLogin()
//    typealias Completionhandler = (Bool,String,UserModelSocial?) -> Void
//    var completionOuter : Completionhandler?
//    var view : UIViewController?
//    var usermodel: UserModelSocial!
//    
//    //MARK: call apple login method
//    func appleLogin(view:UIViewController?) {
//            self.view = view
////        usermodel = UserModelSocial.init()
//        let appleIDProvider = ASAuthorizationAppleIDProvider()
//           let request = appleIDProvider.createRequest()
//           request.requestedScopes = [.fullName, .email]
//           
//           let authorizationController = ASAuthorizationController(authorizationRequests: [request])
//           authorizationController.delegate = self
//           authorizationController.presentationContextProvider = self
//           authorizationController.performRequests()
//    }
//    private func performSignIn(using requests: [ASAuthorizationRequest]) {
//            let controller = ASAuthorizationController(authorizationRequests: requests)
//            controller.delegate = self
//            controller.presentationContextProvider = self
//            controller.performRequests()
//    }
//    
//    
//}
////MARK:- === ASAuthorizationController Delegets ====
//extension AppleLogin: ASAuthorizationControllerDelegate {
//    
//    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
//        if let appleIDCredential = authorization.credential as?  ASAuthorizationAppleIDCredential {
//            let userIdentifier = appleIDCredential.user as String
//            let fullName = appleIDCredential.fullName
//            var email = appleIDCredential.email  ?? ""
////            let givenName = appleIDCredential.fullName?.givenName
//            print("User id is \(userIdentifier) \n Full Name is \(String(describing: fullName)) \n Email id is \(String(describing: email))")
//            
//            let strFullName = (appleIDCredential.fullName?.givenName ?? "") + " " + (appleIDCredential.fullName?.familyName ?? "")
//            
//            if(email.contains("appleid")){
//                email = " "
//            }
//            
//            let params = ["social_id":userIdentifier,"social_type":"Apple","name":strFullName,"email":email]
//           // socialSignUpCall(socialId: userIdentifier, email: email, fullName: strFullName, imagePath: "")
////            self.usermodel = Mapper<UserModelSocial>().map(JSON:params)
//            let jsonData = try? JSONEncoder().encode(params)
//            self.usermodel = try? JSONDecoder().decode(UserModelSocial.self, from: jsonData ?? Data()) 
//            //call back
//            self.completionOuter!(true,"",self.usermodel)
//            
//        }
//    }
//    
//    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
//        print("error in completion",error.localizedDescription)
//        
//        guard let error = error as? ASAuthorizationError else {
//            return
//        }
//        //call back
//        self.completionOuter!(false,error.localizedDescription,self.usermodel)
//        switch error.code {
//        case .canceled:
//            // user press "cancel" during the login prompt 
//            print("Canceled")
//        case .unknown:
//            // user didn't login their Apple ID on the device
//            print("Unknown")
//        case .invalidResponse:
//            // invalid response received from the login
//            print("Invalid Respone")
//        case .notHandled:
//            // authorization request not handled, maybe internet failure during login
//            print("Not handled")
//        case .failed:
//            // authorization failed
//            print("Failed")
//        @unknown default:
//            print("Default")
//        }
//    }
//}
//@available(iOS 13.0, *)
//extension AppleLogin : ASAuthorizationControllerPresentationContextProviding {
//    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
//        return (self.view?.view.window)!
//    }
//    
//}
