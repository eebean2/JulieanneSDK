//
//  File.swift
//  
//
//  Created by Erik Bean on 9/13/19.
//

import SailSDK

public struct Success {
    public var didSucceed: Bool
    public var error: Error?
}

internal class JALogin {
    func login(username: String, password: String, completion: (Success) -> Void) {
        completion(Success(didSucceed: true, error: nil))
    }
    
    /// Paramaters:
    ///     from: AnyObject that conforms to the sail protocol
    func logout(completion: (Success) -> Void) {
        completion(Success(didSucceed: true, error: nil))
    }
}
