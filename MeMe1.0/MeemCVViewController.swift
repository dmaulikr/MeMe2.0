//
//  MeemCVViewController.swift
//  MeMe2.0
//
//  Created by Raxit Cholera on 6/6/17.
//  Copyright © 2017 Raxit Cholera. All rights reserved.
//

import UIKit

class MeemCVViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        collectionView.reloadData()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appDelegate.memes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MeeMedAlreadyCV", for: indexPath) as! MeemCollectionViewCell
        let currentMeem = appDelegate.memes[(indexPath as NSIndexPath).row]
        cell.meemImage.image = currentMeem.memeImage
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let currentMeem = appDelegate.memes[(indexPath as NSIndexPath).row]
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "ViewMeem") as! MeemViewController
        nextView.selectedMeem = currentMeem
        self.navigationController?.pushViewController(nextView, animated: true)
    }

}
