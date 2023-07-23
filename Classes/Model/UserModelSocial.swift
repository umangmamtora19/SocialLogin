//
//  UserModelSocial.swift
//  SocialLoginSwift
//
//  Created by Umang on 13/07/23.
//

import Foundation

public class UserModelSocial: Codable {
    
    public var social_id:String!
    public var social_Type: String!
    public var name: String!
    public var email : String!
    public var profile : String!
    
    enum CodingKeys: String, CodingKey {
        case social_id = "social_id"
        case social_Type = "social_Type"
        case name = "name"
        case profile = "profile"
        case email = "email"
    }
    
    required public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        social_id = try values.decodeIfPresent(String.self, forKey: .social_id)
        social_Type = try values.decodeIfPresent(String.self, forKey: .social_Type)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        profile = try values.decodeIfPresent(String.self, forKey: .profile)
        email = try values.decodeIfPresent(String.self, forKey: .email)
    }
}
