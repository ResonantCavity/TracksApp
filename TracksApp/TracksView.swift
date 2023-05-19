//
//  TracksView.swift
//  TracksApp
//

import UIKit

class TracksView : UIView {

    lazy var button: UIButton = {
        let control = UIButton(configuration: .filled())
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        addSubview(button)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 32),
        ])
    }

}
