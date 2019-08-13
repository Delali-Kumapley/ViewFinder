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
}
