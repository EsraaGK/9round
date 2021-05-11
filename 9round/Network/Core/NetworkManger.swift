//
//  NetworkManger.swift
//  9round
//
//  Created by EsraaGK on 10/05/2021.
//

import Moya
import PromiseKit
import Foundation

class NetworkManger {
    public static let shared = NetworkManger()
    let provider: MoyaProvider<MultiTarget>
    
    private init(){
        provider = MoyaProvider(plugins: [NetworkLoggerPlugin(
                                            configuration: NetworkLoggerPlugin.Configuration(logOptions: .verbose))])
    }
    
    public func callApi<T: Codable>(targetType: TargetType) -> Promise<T> {
        return Promise<T>{ resolver in
            provider.request(MultiTarget(targetType)) { result in
                switch result {
                case .success(let response):
                    if response.isSuccess {
                        do {
                            let result = try JSONDecoder().decode(T.self, from: response.data)
                            resolver.fulfill(result)
                        } catch (let parseError) {
                            resolver.reject(parseError)
                        }
                    }
                    
                case .failure(let error):
                    resolver.reject(error)
                }
            }
            
        }
    }
}
extension Moya.Response {
    var isSuccess: Bool {
        return (200 ... 299) ~= self.statusCode
    }
    
    var isAppTokenExpired: Bool {
        return self.statusCode == 401
    }
    
    var isTimeOut: Bool {
        return self.statusCode == 504
    }
}
