//
//  MeemViewController.swift
//  MeMe2.0
//
//  Created by Raxit Cholera on 6/6/17.
//  Copyright © 2017 Raxit Cholera. All rights reserved.
//

import UIKit

class MeemViewController: UIViewController {

    var selectedMeem:Meme!
    
    @IBOutlet weak var meemImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        title = "View Meem"
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        meemImage.image = selectedMeem.memeImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
