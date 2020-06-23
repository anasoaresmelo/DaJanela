//
//  ViewController.swift
//  Da janela
//
//  Created by Ana Carolina Soares de Melo on 03/06/20.
//  Copyright © 2020 Ana Carolina Soares de Melo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Declarations
    @IBOutlet weak var insideviewImage: UIImageView!
    @IBOutlet weak var windowButton: UIButton!
    @IBOutlet weak var chestButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        
        //MARK: Autolayout
        //Autolayout for Inside view Image
        insideviewImage.translatesAutoresizingMaskIntoConstraints = false
        
        insideviewImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        insideviewImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        insideviewImage.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        
        
        //Autolayout for Window Button
        windowButton.backgroundColor = .clear
        windowButton.translatesAutoresizingMaskIntoConstraints = false
        
        windowButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        windowButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        windowButton.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.55).isActive = true
        windowButton.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8).isActive = true
        
        //Autolayout for Settings Button
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        
        settingsButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        settingsButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        self.view.addConstraint(NSLayoutConstraint(item: windowButton!, attribute: .top, relatedBy: .equal, toItem: settingsButton, attribute: .bottom, multiplier: 1.0, constant: 50))
        
        //Autolayout for Settings Button
        chestButton.translatesAutoresizingMaskIntoConstraints = false
        
        chestButton.bottomAnchor.constraint(equalTo: windowButton.bottomAnchor).isActive = true
        chestButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        chestButton.widthAnchor.constraint(equalToConstant: 140).isActive = true

    }
    
}

