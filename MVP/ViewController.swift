//
//  ViewController.swift
//  MVP
//
//  Created by Karim Elshaarawy on 16/08/2023.
//

import UIKit
 protocol VCProtocol: AnyObject {
func setRedBackground ( )
func setGreenBackground ()
func setMessage (message: String)

 }
class ViewController: UIViewController {
@IBOutlet weak var nameTextField: UITextField!
@IBOutlet weak var messageLabel: UILabel!

lazy var presenter: Presenter = Presenter (view: self)
    override func viewDidLoad() { super.viewDidLoad()
// Do any additional setup after loading the view.
}
@IBAction func updateUIBtnTapped( sender: UIButton) {
self.presenter.startChecking (name: nameTextField.text)

 }
}
extension ViewController: VCProtocol {
    func setGreenBackground() {
        self.view.backgroundColor = .green
        
    }
    
    func setMessage(message: String) {
        messageLabel.text = message
        
    }
    
    func setRedBackground () {
        self.view.backgroundColor = .red
        
        
        
        
    }}
