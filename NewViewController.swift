//
//  NewViewController.swift
//  CollectionViewDemo
//
//  Created by JiangYe on 10/17/16.
//  Copyright © 2016 JiangYe. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    var image = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ImageView.image = self.image

        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
