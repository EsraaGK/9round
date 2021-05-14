//
//  AuthonticationTargetType.swift
//  9round
//
//  Created by EsraaGK on 10/05/2021.
//

import Moya
import Foundation

enum AuthonticationTargetType {
    case getClubsChainId
    case registerUser(user: User)
}

extension AuthonticationTargetType: TargetType {
    var baseURL: URL {
        guard let url = URL(string: Environment.baseURL) else { fatalError("couldn't creat url") }
        return url
    }
    
    var path: String {
        switch self {
        case .getClubsChainId: return "/corp/{chainId}/clubs"
        case .registerUser: return "/users/prospect"
            
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getClubsChainId: return .get
        case .registerUser: return .post
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .getClubsChainId:
            return .requestParameters(parameters: ["ApiKey": Environment.keyApi, "ChainId": "375"],
                                      encoding: URLEncoding.default)
        case .registerUser(let user): return .requestParameters(
            parameters: ["ApiKey": Environment.keyApi,
                         "StoreId": "\(String(user.storeId ?? 0))",
                         "Email": "\(user.email)",
                         "FirstName": "\(user.firstName)",
                         "LastName": "\(user.lastName)",
                         "sendEmail": "\(user.sendEmail)"],
            encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return ["Accept": "application/json",
                "Content-Type": "application/json"]
    }
}
