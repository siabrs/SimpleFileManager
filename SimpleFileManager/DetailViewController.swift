//
//  DetailViewController.swift
//  SimpleFileManager
//
//  Created by Oleksandra Siabrenko on 05.05.2023.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var countPictures = 0
    var numberOfPicture = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Picture \(numberOfPicture) of \(countPictures)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let pictureToLoad = selectedImage {
            imageView.image = UIImage(named: pictureToLoad)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
