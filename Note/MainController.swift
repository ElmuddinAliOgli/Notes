//
//  ViewController.swift
//  Note
//
//  Created by Эльмуддин on 19.03.2023.
//

import UIKit

class MainController: UIViewController {
    
    enum Constant {
        static let tableViewTitle = "Notes"
        static let cellId = "noteCell"
    }
    
    let tableView = UITableView()
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupButton()
        setupLayout()
        setupTableView()
        view.backgroundColor = .white
        self.title = Constant.tableViewTitle
    }
    
    private func setupTableView() {
        
    }
    
    private func setupButton() {
        button.setTitle("Add new note", for: .normal)
        button.backgroundColor = .systemGray6
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(addNoteButton), for: .touchUpInside)
    }
    
    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        view.addSubview(button)
        
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func addNoteButton() {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }


}


