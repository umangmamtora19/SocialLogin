

import Foundation
import UIKit
import AuthenticationServices

//MARK: - call apple login method
extension SocialLogin {
    
    public func appleLogin(view: UIViewController) {
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        let request = appleIDProvider.createRequest()
        request.requestedScopes = [.fullName, .email]
        
        let authorizationController = ASAuthorizationController(authorizationRequests: [request])
        authorizationController.delegate = self
//        authorizationController.presentationContextProvider = self
        authorizationController.performRequests()
    }
}
//MARK:- === ASAuthorizationController Delegets ====
extension SocialLogin: ASAuthorizationControllerDelegate {
    
    public func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let appleIDCredential = authorization.credential as?  ASAuthorizationAppleIDCredential {
            let userIdentifier = appleIDCredential.user as String
            var email = appleIDCredential.email  ?? ""

            let strFullName = (appleIDCredential.fullName?.givenName ?? "") + " " + (appleIDCredential.fullName?.familyName ?? "")
            
            if(email.contains("appleid")){
                email = " "
            }
            
            let params = ["social_id": userIdentifier, "social_type": "Apple", "name": strFullName, "email": email]
            
            let jsonData = try? JSONEncoder().encode(params)
            let usermodel: UserModelSocial = try!JSONDecoder().decode(UserModelSocial.self, from: jsonData ?? Data())
            self.completion?(true, "", usermodel)
        }
    }
    
    public func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        
        guard let error = error as? ASAuthorizationError else {
            self.completion!(false, error.localizedDescription, nil)
            return
        }
    }
}
//@available(iOS 13.0, *)
//extension SocialLogin : ASAuthorizationControllerPresentationContextProviding {
//    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
//        return (self.view?.view.window)!
//    }
//
//}
