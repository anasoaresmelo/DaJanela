//
//  OutsideviewViewController.swift
//  Da janela
//
//  Created by Ana Carolina Soares de Melo on 16/06/20.
//  Copyright © 2020 Ana Carolina Soares de Melo. All rights reserved.
//

import UIKit

class OutsideviewViewController: UIViewController {
    
    @IBOutlet weak var outsideImage: UIImageView!
    @IBOutlet weak var neighborButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: Autolayout
        //Autolayout for Outside view Image
        outsideImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            outsideImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            outsideImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            outsideImage.widthAnchor.constraint(equalToConstant: self.view.frame.width*1.05)
        ])
        
        //Autolayout for Neighbor Window Button
        neighborButton.backgroundColor = .clear
        neighborButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            neighborButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 70),
            neighborButton.topAnchor.constraint(equalTo: self.view.centerYAnchor),
            neighborButton.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.20),
            neighborButton.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.30)
        ])
        
        //Autolayout for Neighbor Window Button
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            backButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 70)
        ])
        
        //MARK: Buttons Targets
        backButton.addTarget(self, action: #selector(OutsideviewViewController.touchedBackButton), for: .touchUpInside)
    }
    
    //MARK: Buttons Actions
    @IBAction func touchedBackButton(){
           navigationController?.popViewController(animated: true)
       }
}
