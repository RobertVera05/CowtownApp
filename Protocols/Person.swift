//
//  Person.swift
//  CowtownApp
//
//  Created by Robert Vera on 4/10/18.
//  Copyright © 2018 Robert.Vera05. All rights reserved.
//

import Foundation
import UIKit

protocol Person
{
    //variables
    var firstName: NSString{get set}
    var lastName: NSString{get set}
    var middleName: NSString?{get set}
    var fullName: String?{get set}
    var address: NSString{get set}
    var dateOfBirth: NSDate{get set}
    var age: Int{get set}
    var phoneNumber: NSString?{get set}
    var email: NSString?{get set}
    var pictureId: UIImage?{get set}
    var gender: NSString{get set}
    
    //functions
    func getFirstName() -> NSString
    func setFirstName(firstName: NSString)
    func getLastName() -> NSString
    func setLastName(lastName: NSString)
    func getMiddleName() -> NSString
    func setMiddleName(middleName: NSString)
    func getFullName() -> String
    func getAddress() -> NSString
    func setAddress(address: NSString)
    func getDateOfBirth() -> NSDate
    func setDateOfBirth(dateOfBirth: NSDate)
    func getAge() -> Int
    func setAge(age: Int)
    func getPhoneNumber() -> NSString
    func setPhoneNumber(phoneNumber: NSString)
    func getEmail() -> NSString?
    func setEmail(email: NSString?)
    func getPictureId() -> UIImage?
    func setPictureId(pictureId: UIImage?)
    func getGender() -> NSString
    func setGender(gender: NSString)
}
