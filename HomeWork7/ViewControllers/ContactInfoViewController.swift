//
//  fullInfoViewController.swift
//  HomeWork7
//
//  Created by Vetal on 10.06.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    
    var info: personalData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: info.fullName)
        phoneLabel.text = info.phone
        mailLabel.text = info.mail
        title = info.fullName
        imageView.layer.cornerRadius = imageView.frame.height / 2
    }
}
