//
//  SecondViewController.swift
//  Note
//
//  Created by Эльмуддин on 19.03.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    enum Constant {
        static let noteTitle = "New Note"
    }
    
    private var noteStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        // Do any additional setup after loading the view.
    }
    
    private var noteLabel: UILabel = {
        let label = UILabel()
        label.text = Constant.noteTitle
        label.textAlignment = .center
        label.font = .italicSystemFont(ofSize: 15)
        return label
    }()
    
    private func setupNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit,
                                                            target: self,
                                                            action: #selector(editButtonDidTap))
    }
    
    private func setupLayout() {
        noteLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(noteLabel)
        
        NSLayoutConstraint.activate([
               
        ])
    }
    
    @objc func editButtonDidTap() {
        print("Did Tap")
    }
}
