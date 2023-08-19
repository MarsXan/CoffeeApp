//
//  User.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import FirebaseFirestoreSwift
import Defaults

struct User:Identifiable,Codable{
    @DocumentID var id:String?
    var name: String
    var username: String
    var email: String
    var bio: String
    var bioLink: String
    var image: String
}

extension User: Defaults.Serializable {
    static let bridge = UserBridge()
}

struct UserBridge:Defaults.Bridge{
    typealias Value = User
    typealias Serializable = [String:String]
    
    public func serialize(_ value: Value?) -> Serializable? {
            guard let value else {
                return nil
            }

            return [
                "name": value.name,
                "username": value.username,
                "email":value.email,
                "bio":value.bio,
                "bioLink":value.bioLink,
                "image":value.image,
            ]
        }

        public func deserialize(_ object: Serializable?) -> Value? {
            guard
                let object,
                let name = object["name"],
                let username = object["username"],
                let email = object["email"],
                let bio = object["bio"],
                let bioLink = object["bioLink"],
                let image = object["image"]
            
            else {
                return nil
            }

            return User(
                name: name,
                username: username,
                email: email,
                bio: bio,
                bioLink: bioLink,
                image: image
            )
        
        }
}
