//
//  Environment.swift
//  9round
//
//  Created by EsraaGK on 10/05/2021.
//

import Foundation

enum Environment {
    
    private static let infoDictionary: [String: Any] =  {
        guard let infoDict = Bundle.main.infoDictionary else { fatalError("info.Plist file not found") }
        return infoDict
    }()
    
    public static let keyApi: String = {
        guard let keyApi = Environment.infoDictionary["KEY_API"] as? String
        else { fatalError("info.Plist file not found") }
        return keyApi
    }()
    
    static var baseURL: String {
        guard let baseURLstring = Environment.infoDictionary["BASE_URL"] as? String,
            !baseURLstring.isEmpty else {
                fatalError("Base URL not set in plist for this environment")
        }
        return baseURLstring
    }
}
