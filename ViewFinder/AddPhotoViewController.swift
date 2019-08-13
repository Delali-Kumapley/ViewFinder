//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Delali Kumapley on 8/13/19.
//  Copyright © 2019 Delali Kumapley. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
    imagePicker.delegate = self
    }
    
    @IBAction func takeSelfieTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
        
        
    }
        @IBOutlet weak var displayImage: UIImageView!
    
    private func imagePickerController(_picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            displayImage.image = selectedImage
        }
      imagePicker.dismiss(animated: true, completion: nil)
}
}

