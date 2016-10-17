//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by JiangYe on 10/17/16.
//  Copyright © 2016 JiangYe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    
    @IBOutlet weak var colletionView: UICollectionView!
    
    
    let animals = ["dog","cat","elephant","giraffe"]
    let imageArray = [ UIImage(named:"dog"), UIImage(named:"cat"),UIImage(named:"elephant"),UIImage(named:"giraffe")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.animals.count
        
    }
    
    // create customer cell
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.ImageView?.image = self.imageArray[indexPath.row]
        cell.titleLable?.text = self.animals[indexPath.row]
        
        return cell
        
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("showImage", sender: self)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "showImage")
        {
            let indexPath = (self.colletionView.indexPathsForSelectedItems())![0] as NSIndexPath
            
            let vc = segue.destinationViewController as! NewViewController
            
            vc.image = self.imageArray[indexPath.row]!
            
            vc.title = self.animals[indexPath.row]
        }
        
    }
    
    
    
    
    
    
}

