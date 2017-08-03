//
//  MeemTVViewController.swift
//  MeMe2.0
//
//  Created by Raxit Cholera on 6/6/17.
//  Copyright © 2017 Raxit Cholera. All rights reserved.
//

import UIKit

class MeemTVViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableview.reloadData()
        self.navigationController?.isNavigationBarHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDelegate.memes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MeeMedAlreadyTV", for: indexPath)
        
        let currentMeem = appDelegate.memes[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = "\(currentMeem.topText!)...\(currentMeem.bottomText!)"
        cell.imageView?.image = currentMeem.memeImage
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentMeem = appDelegate.memes[(indexPath as NSIndexPath).row]
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "ViewMeem") as! MeemViewController
        nextView.selectedMeem = currentMeem
        self.navigationController?.pushViewController(nextView, animated: true)
    }
}
