//
//	ResponseStatu.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct ResponseStatus: Codable {

	let errorCode: String?
   // let errors : [Error]?
	let message : String?


	enum CodingKeys: String, CodingKey {
		case errorCode = "ErrorCode"
	//	case errors = "Errors"
		case message = "Message"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		errorCode = try values.decodeIfPresent(String.self, forKey: .errorCode)
		//errors = try values.decodeIfPresent([Error].self, forKey: .errors)
		message = try values.decodeIfPresent(String.self, forKey: .message)
	}
}

extension ResponseStatus: Error, LocalizedError {
    public var errorDescription: String? {
        message
    }
}
