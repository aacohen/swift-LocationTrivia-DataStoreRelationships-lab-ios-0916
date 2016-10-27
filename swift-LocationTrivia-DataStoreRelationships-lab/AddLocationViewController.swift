//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Ariela Cohen on 10/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {
    
    var location: Location = Location ()

    @IBOutlet weak var longitudeLabel: UITextField!
    @IBOutlet weak var latitudeLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var saveButtonOutlet: UIButton!
    @IBOutlet weak var cancelButtonOutlet: UIButton!
    @IBAction func cancelButtonAction(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)

    }
    @IBAction func saveButtonAction(_ sender: AnyObject) {
       let newLocation = Location(name: nameLabel.text!, latitude: Float(latitudeLabel.text!)!, longitude: Float(longitudeLabel.text!)!)
       LocationDataStore.sharedInstance.locations.append(newLocation)
        
        
        dismiss(animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

