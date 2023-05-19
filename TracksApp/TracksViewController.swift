//
//  TracksViewController.swift
//  TracksApp
//

import UIKit

class TracksViewController: UIViewController {

    var v: TracksView {
        return self.view as! TracksView
    }

    override func loadView() {
        self.view = TracksView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        v.button.setTitle("Tap Me", for: .normal)
    }

}
