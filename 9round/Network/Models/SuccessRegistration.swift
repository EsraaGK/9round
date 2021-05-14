//
//  SuccessRegistration.swift
//  9round
//
//  Created by EsraaGK on 14/05/2021.
//

import Foundation

struct SuccessRegistration: Codable {

    let emailSent: Bool?
    let message: String?
    let packageAdded: Bool?
    let statusCode: Int?
    let success: Bool?
    let userId: Int?

    enum CodingKeys: String, CodingKey {
        case emailSent = "EmailSent"
        case message = "Message"
        case packageAdded = "PackageAdded"
        case statusCode = "StatusCode"
        case success = "Success"
        case userId = "UserId"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        emailSent = try values.decodeIfPresent(Bool.self, forKey: .emailSent)
        message = try values.decodeIfPresent(String.self, forKey: .message)
        packageAdded = try values.decodeIfPresent(Bool.self, forKey: .packageAdded)
        statusCode = try values.decodeIfPresent(Int.self, forKey: .statusCode)
        success = try values.decodeIfPresent(Bool.self, forKey: .success)
        userId = try values.decodeIfPresent(Int.self, forKey: .userId)
    }
}
