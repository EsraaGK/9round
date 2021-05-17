//
//	Addres.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Addres: Codable {

	let city: String?
	let postalCode: String?
	let stateProv: String?
	let street: String?


	enum CodingKeys: String, CodingKey {
		case city = "City"
		case postalCode = "PostalCode"
		case stateProv = "StateProv"
		case street = "Street"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		city = try values.decodeIfPresent(String.self, forKey: .city)
		postalCode = try values.decodeIfPresent(String.self, forKey: .postalCode)
		stateProv = try values.decodeIfPresent(String.self, forKey: .stateProv)
		street = try values.decodeIfPresent(String.self, forKey: .street)
	}


}
