//
//  User.swift
//  9round
//
//  Created by EsraaGK on 11/05/2021.
//

import Foundation

struct User: Codable {

    var address : String?
    var cellPhone : String?
    var storeId : Int?
    var city : String?
    var contactedHow : Int?
    var coupon : String?
    var email : String
    var emailOptOut : Bool?
    var emergencyContactName : String?
    var emergencyContactPhone : String?
    var emergencyContactType : String?
    var externalId : String?
    var firstName : String
    var gender : String?
    var lastName : String
    var note : String?
    var phone : String?
    var restrictedId : Int?
    var restrictedResourceType : String?
    var sendEmail : Bool
    var state : String?
    var username : String?
    var workPhone : String?
    var zip : String?


    enum CodingKeys: String, CodingKey {
        case address = "Address"
        case cellPhone = "CellPhone"
        case storeId = "ChainId" //
        case city = "City"
        case contactedHow = "ContactedHow"
        case coupon = "Coupon"
        case email = "Email"
        case emailOptOut = "EmailOptOut"
        case emergencyContactName = "EmergencyContactName"
        case emergencyContactPhone = "EmergencyContactPhone"
        case emergencyContactType = "EmergencyContactType"
        case externalId = "ExternalId"
        case firstName = "FirstName"
        case gender = "Gender"
        case lastName = "LastName"
        case note = "Note"
        case phone = "Phone"
        case restrictedId = "RestrictedId"
        case restrictedResourceType = "RestrictedResourceType"
        case sendEmail = "SendEmail"
        case state = "State"
        case username = "Username"
        case workPhone = "WorkPhone"
        case zip = "Zip"
    }
    init() {
         address = ""
         cellPhone = ""
         storeId = nil
         city = ""
         contactedHow = nil
         coupon = ""
         email = ""
         emailOptOut = nil
         emergencyContactName = ""
         emergencyContactPhone = ""
         emergencyContactType = ""
         externalId = ""
         firstName = ""
         gender = "Gender"
         lastName = ""
         note = ""
         phone = ""
         restrictedId = nil
         restrictedResourceType = ""
         sendEmail = true
         state = ""
         username = ""
         workPhone = ""
         zip = ""
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        address = try values.decodeIfPresent(String.self, forKey: .address)
        cellPhone = try values.decodeIfPresent(String.self, forKey: .cellPhone)
        storeId = try values.decodeIfPresent(Int.self, forKey: .storeId)
        city = try values.decodeIfPresent(String.self, forKey: .city)
        contactedHow = try values.decodeIfPresent(Int.self, forKey: .contactedHow)
        coupon = try values.decodeIfPresent(String.self, forKey: .coupon)
        email = try values.decodeIfPresent(String.self, forKey: .email) ?? ""
        emailOptOut = try values.decodeIfPresent(Bool.self, forKey: .emailOptOut)
        emergencyContactName = try values.decodeIfPresent(String.self, forKey: .emergencyContactName)
        emergencyContactPhone = try values.decodeIfPresent(String.self, forKey: .emergencyContactPhone)
        emergencyContactType = try values.decodeIfPresent(String.self, forKey: .emergencyContactType)
        externalId = try values.decodeIfPresent(String.self, forKey: .externalId)
        firstName = try values.decodeIfPresent(String.self, forKey: .firstName) ?? ""
        gender = try values.decodeIfPresent(String.self, forKey: .gender)
        lastName = try values.decodeIfPresent(String.self, forKey: .lastName) ?? ""
        note = try values.decodeIfPresent(String.self, forKey: .note)
        phone = try values.decodeIfPresent(String.self, forKey: .phone)
        restrictedId = try values.decodeIfPresent(Int.self, forKey: .restrictedId)
        restrictedResourceType = try values.decodeIfPresent(String.self, forKey: .restrictedResourceType)
        sendEmail = try values.decodeIfPresent(Bool.self, forKey: .sendEmail) ?? true
        state = try values.decodeIfPresent(String.self, forKey: .state)
        username = try values.decodeIfPresent(String.self, forKey: .username)
        workPhone = try values.decodeIfPresent(String.self, forKey: .workPhone)
        zip = try values.decodeIfPresent(String.self, forKey: .zip)
    }


}
