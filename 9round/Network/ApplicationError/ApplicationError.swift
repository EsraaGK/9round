//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct ApplicationError: Codable {

	let responseStatus: ResponseStatus?

	enum CodingKeys: String, CodingKey {
		case responseStatus = "ResponseStatus"
	}
    
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
        responseStatus = try values.decode(ResponseStatus.self, forKey: .responseStatus)
	}
}

