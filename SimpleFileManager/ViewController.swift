//
//  ViewController.swift
//  SimpleFileManager
//
//  Created by Oleksandra Siabrenko on 05.05.2023.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("dog") {
                pictures.append(item)
            }
        }
    }
}

