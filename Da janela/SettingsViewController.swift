//
//  SettingsViewController.swift
//  Da janela
//
//  Created by Ana Carolina Soares de Melo on 16/06/20.
//  Copyright © 2020 Ana Carolina Soares de Melo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    let tableView = UITableView()
    var safeArea: UILayoutGuide!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        safeArea = view.layoutMarginsGuide
        
        setupTableView()
    }
    
    func setupTableView() {
      view.addSubview(tableView)
      tableView.translatesAutoresizingMaskIntoConstraints = false
      tableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
      tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
      tableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
      tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

}
var characters = ["Link", "Zelda", "Ganondorf", "Midna"]

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return characters.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = characters[indexPath.row]
    return cell
  }
}
