//
//  File.swift
//  
//
//  Created by Erik Bean on 9/13/19.
//

#if !os(macOS)
import UIKit
#else
import AppKit
#endif
import SailSDK

public class JAUser {
    /// The current shared user model
    ///
    /// This is the current user that should be used throughout
    /// the client. This shared user houses everything related
    /// to authenticating, moderating, and identifying the user.
    public static let current = JAUser()
    private let login = JALogin()
    
    public func login(username: String, password: String, completion: (Success) -> Void) {
        login.login(username: username, password: password, completion: completion)
        
    }
    
    public func logout(completion: (Success) -> Void) {
        login.logout(completion: completion)
    }
}
