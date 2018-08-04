//
//  FreeAgents.swift
//  CowtownApp
//
//  Created by Robert Vera on 4/19/18.
//  Copyright © 2018 Robert.Vera05. All rights reserved.
//

import Foundation
import UIKit

class FreeAgent: NSObject, Person {
    internal var firstName: NSString
    internal var lastName: NSString
    internal var middleName: NSString?
    internal var fullName: String?
    internal var address: NSString
    internal var phoneNumber: NSString?
    internal var dateOfBirth: NSDate
    internal var age: Int
    internal var email: NSString?
    internal var pictureId: UIImage?
    internal var gender: NSString
    private var preferredDivision: NSString
    private var skillLevel: NSString
    private var position: NSString
    private var available: Bool
    
    init(firstName: NSString, lastName: NSString, middleName: NSString, address: NSString,
         age: Int, phoneNumber: NSString, email: NSString, dateOfBirth: NSDate, pictureId: UIImage,
         preferredDivision: NSString, gender: NSString, skillLevel: NSString, position: NSString) {
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.address = address
        self.age = age
        self.phoneNumber = phoneNumber
        self.email = email
        self.dateOfBirth = dateOfBirth
        self.pictureId = pictureId
        self.preferredDivision = preferredDivision
        self.gender = gender
        self.skillLevel = skillLevel
        self.available = true
        self.position = position
    }
    
    func getFirstName() -> NSString {
        return firstName
    }
    
    func setFirstName(firstName: NSString) {
        self.firstName = firstName
    }
    
    func getLastName() -> NSString {
        return lastName
    }
    
    func setLastName(lastName: NSString) {
        self.lastName = lastName
    }
    
    func getMiddleName() -> NSString {
        return middleName!
    }
    
    func setMiddleName(middleName: NSString) {
        self.middleName = middleName
    }
    
    func getFullName() -> String {
        var isEmpty = true
        
        if (middleName != nil)  {
            isEmpty = false
        }
        if(!isEmpty){
            fullName = (firstName as String) + (middleName! as String) + (lastName as String)
        }
        else{
            fullName = (firstName as String) + (lastName as String)
        }
        
        return fullName!
    }
    
    func getAddress() -> NSString {
        return address
    }
    
    func setAddress(address: NSString) {
        self.address = address
    }
    
    func getDateOfBirth() -> NSDate {
        return dateOfBirth
    }
    
    func setDateOfBirth(dateOfBirth: NSDate) {
        self.dateOfBirth = dateOfBirth
    }
    
    func getAge() -> Int {
        return age
    }
    
    func setAge(age: Int) {
        self.age = age
    }
    
    func getPhoneNumber() -> NSString {
        return phoneNumber!
    }
    
    func setPhoneNumber(phoneNumber: NSString) {
        self.phoneNumber = phoneNumber
    }
    
    func getEmail() -> NSString? {
        return email
    }
    
    func setEmail(email: NSString?) {
        self.email = email
    }
    
    func getPictureId() -> UIImage? {
        return pictureId
    }
    
    func setPictureId(pictureId: UIImage?) {
        self.pictureId = pictureId
    }
    
    func getPreferredDivision() -> NSString {
        return preferredDivision
    }
    
    func setPreferredDivision(preferredDivision: NSString) {
        self.preferredDivision = preferredDivision
    }
    
    func getGender() -> NSString {
        return gender
    }
    
    func setGender(gender: NSString) {
        self.gender = gender
    }
    
    func getSkillLevel() -> NSString {
        return skillLevel
    }
    
    func setSkillLevel(skillLevel: NSString) {
        self.skillLevel = skillLevel
    }
    
    func getAvailable() -> Bool {
        return available
    }
    
    func setAvailble(available: Bool) {
        self.available = available
    }
    
    func getPosition() -> NSString {
        return position
    }
    
    func setPosition(position: NSString) {
        self.position = position
    }
}
