


import Foundation
import GoogleSignIn
import FBSDKLoginKit

public class SocialLogin: NSObject {
    typealias Completionhandler = ((Bool,String,UserModelSocial?) -> Void)
    var completion : Completionhandler?
    var loginManager = LoginManager()
    public var clientID = ""
     
}
