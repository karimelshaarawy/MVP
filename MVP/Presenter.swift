//
//  Presenter.swift
//  MVP
//
//  Created by Karim Elshaarawy on 16/08/2023.
//

import Foundation
class Presenter {

weak var view: VCProtocol?

var familyMembers: [String] = ["Hamdy", "Atallah", "Hoda", "Salah", "Semary", "Fady"]

init (view: VCProtocol) {
self.view = view

}

public func startChecking (name: String?) {
guard let name = name else {return}
if isFamilyMember (name: name) {
self.view?.setGreenBackground()
} else {
self.view?.setRedBackground ()

}
let message = getMessage (name: name)
self.view?.setMessage (message: message)
}
 }

extension Presenter {
private func isFamilyMember (name: String) -> Bool {
    if familyMembers.contains (name){
        return true
    }
    return false
}

private func getMessage (name: String) -> String {
    if isFamilyMember (name: name){
        return "Hello \(name) as a member of our familv!"}
    return "Sorry \(name) vou aren't a member of our familv!"}
}
