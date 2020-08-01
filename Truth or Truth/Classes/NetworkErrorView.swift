//
//  NetworkErrorView.swift
//  Truth or Truth
//
//  Created by Josiah Rininger on 7/31/20.
//  Copyright © 2020 Josiah Rininger. All rights reserved.
//

import UIKit

class NetworkErrorView: UIView {
    var popUp = PopUp(frame: .zero, title: "Error title".localize(), twoButtons: false)
    var errorLabel = UILabel.create(with: "Error message".localize(), fontSize: 24, color: .label, textAlignment: .center)
    
    override var isHidden: Bool {
        didSet {
            isUserInteractionEnabled = !isHidden
            popUp.isHidden = isHidden
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        backgroundColor = .clear
        
        addSubview(popUp)
        setupPopUp()
    }
    
    private func setupPopUp() {
        popUp.addSubview(errorLabel)
        popUp.doneButton.setTitle("Okay".localize(), for: .normal)
        
        NSLayoutConstraint.activate([
            errorLabel.topAnchor.constraint(equalTo: popUp.titleLabel.bottomAnchor, constant: 5),
            errorLabel.leadingAnchor.constraint(equalTo: popUp.popUpView.leadingAnchor, constant: 20),
            errorLabel.trailingAnchor.constraint(equalTo: popUp.popUpView.trailingAnchor, constant: -20),

            popUp.doneButton.topAnchor.constraint(equalTo: errorLabel.bottomAnchor, constant: 15)
            ])
    }
}

