 //
//  MusicListViewController.swift
//  ViewControllersTest
//
//  Created by Michael Jay Abalos on 25/09/2017.
//  Copyright © 2017 Michael Jay Abalos. All rights reserved.
//

import UIKit

class MusicListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loadSongButton(_ sender: Any) {
        let songTitle = "Geronemo!"
        performSegue(withIdentifier: "callPlaySongVC", sender:songTitle)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let destination = segue.destination as? PlaySongViewController{
            if let song = sender as? String{
                destination.songTitle = song
            }
        }
    }
  

}
