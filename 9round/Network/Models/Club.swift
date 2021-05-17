//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct List<T> {
    let list: T?
}

struct Club: Codable {

	let address : Addres?
	let chainId : Int?
	let clubType : String?
	let creditBalance : Int?
	let districtId : Int?
	let divisionId : Int? // = 343 for SA 
	let email : String?
	let id : Int?
	let locationName : String?
	let name : String?
	let phone : String?
	let timeOffset : Int?


	enum CodingKeys: String, CodingKey {
		case address
		case chainId = "ChainId"
		case clubType = "ClubType"
		case creditBalance = "CreditBalance"
		case districtId = "DistrictId"
		case divisionId = "DivisionId"
		case email = "Email"
		case id = "Id"
		case locationName = "LocationName"
		case name = "Name"
		case phone = "Phone"
		case timeOffset = "TimeOffset"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		address = try Addres(from: decoder)
		chainId = try values.decodeIfPresent(Int.self, forKey: .chainId)
		clubType = try values.decodeIfPresent(String.self, forKey: .clubType)
		creditBalance = try values.decodeIfPresent(Int.self, forKey: .creditBalance)
		districtId = try values.decodeIfPresent(Int.self, forKey: .districtId)
		divisionId = try values.decodeIfPresent(Int.self, forKey: .divisionId)
		email = try values.decodeIfPresent(String.self, forKey: .email)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		locationName = try values.decodeIfPresent(String.self, forKey: .locationName)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		phone = try values.decodeIfPresent(String.self, forKey: .phone)
		timeOffset = try values.decodeIfPresent(Int.self, forKey: .timeOffset)
	}


}
