//
//  APIController.swift
//  AnimalSpotter
//
//  Created by Ben Gohlke on 4/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

class APIController {
    
    private let baseUrl = URL(string: "https://lambdaanimalspotter.vapor.cloud/api")!
    
    // create function for sign up
    func signUp(with user: User, completion: @escaping (Error?) -> ()) {
        //create endpoint - specifit URL
        let signUpUrl = baseUrl.appendingPathComponent("users/signup")
        //create a URLRequest from above
        var request = URLRequest(url: signUpUrl)
        
        //Modify the request for post, add proper headers
        request.httpMethod = HTTPMethod.post.rawValue
                       //value, key, we are sending this to the server
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        //encode the user model to JSON, attach as reuqest body
        let jsonEncoder = JSONEncoder()
        do {
            let jsonData = try jsonEncoder.encode(user)
            request.httpBody = jsonData
        } catch {
            NSLog("Error encoding user object: \(error)")
            completion(error)
            return
        }
 
        //set up data task and handle response
    }
    // create function for sign in
    
    // create function for fetching all animal names
    
    //creat function for fetching animal details
    
    // create function to fetch image
}
