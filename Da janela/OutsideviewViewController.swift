//
//  OutsideviewViewController.swift
//  Da janela
//
//  Created by Ana Carolina Soares de Melo on 16/06/20.
//  Copyright © 2020 Ana Carolina Soares de Melo. All rights reserved.
//

import UIKit

class OutsideviewViewController: UIViewController {
    
    //MARK: Declarations
    @IBOutlet weak var outsideImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemYellow
        
        //MARK: Autolayout
        //Autolayout for Background
        
        outsideImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            outsideImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            outsideImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            outsideImage.widthAnchor.constraint(equalToConstant: self.view.frame.width)
        ])
    }


}
