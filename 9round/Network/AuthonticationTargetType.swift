//
//  AuthonticationTargetType.swift
//  9round
//
//  Created by EsraaGK on 10/05/2021.
//

import Moya
import Foundation

enum AuthonticationTargetType {
    case chainId
}

extension AuthonticationTargetType: TargetType {
    var baseURL: URL {
        guard let url = URL(string: Environment.baseURL) else { fatalError("couldn't creat url") }
        return url
         }
    
    var path: String {
        switch self {
        case .chainId: return "/corp/{chainId}/clubs"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .chainId:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .chainId:
            return .requestParameters(parameters: ["ApiKey": Environment.keyApi, "ChainId": "375"],
                                      encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return ["Accept": "application/json"]
    }
}
