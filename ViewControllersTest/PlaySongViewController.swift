//
//  PlaySongViewController.swift
//  ViewControllersTest
//
//  Created by Michael Jay Abalos on 25/09/2017.
//  Copyright © 2017 Michael Jay Abalos. All rights reserved.
//

import UIKit

class PlaySongViewController: UIViewController {

    @IBOutlet weak var songTitleLabel: UILabel!
    
    private var _songTitle: String!
    
    var songTitle:String{
        get{
            return _songTitle
        }set{
            _songTitle = newValue //newValue is a keyword
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLabel.text = _songTitle
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
