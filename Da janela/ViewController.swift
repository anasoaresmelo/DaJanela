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
        
        NSLayoutConstraint.activate([
            insideviewImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            insideviewImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            insideviewImage.widthAnchor.constraint(equalToConstant: self.view.frame.width)
        ])
        
        //Autolayout for Window Button
        windowButton.backgroundColor = .clear
        windowButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            windowButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            windowButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            windowButton.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.55),
            windowButton.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.8)
        ])
        
        //Autolayout for Settings Button
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            settingsButton.heightAnchor.constraint(equalToConstant: 40),
            settingsButton.widthAnchor.constraint(equalToConstant: 40),
            settingsButton.bottomAnchor.constraint(equalTo: windowButton.topAnchor, constant: -70),
            settingsButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
            
        ])
        
        //Autolayout for Chest Button
        chestButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            chestButton.bottomAnchor.constraint(equalTo: windowButton.bottomAnchor),
            chestButton.heightAnchor.constraint(equalToConstant: 100),
            chestButton.widthAnchor.constraint(equalToConstant: 140),
            chestButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
        ])
        
    }
    
}


