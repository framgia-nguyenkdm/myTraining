//
//  ViewController.swift
//  NSOperation
//
//  Created by khuc.d.m.nguyen on 4/5/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    var queue: OperationQueue!
    let img1URL = "http://4hatsandfrugal.com/wp-content/uploads/2018/02/Black-Panther-Review-2.jpg"
    let img2URL = "http://www.thelocationguide.com/wp-content/uploads/2013/06/Man-of-Steel-in-Illinois.jpg"
    let img3URL = "https://i.kinja-img.com/gawker-media/image/upload/s--Kr4HLNpR--/c_scale,fl_progressive,q_80,w_800/xclhq4ovt3kpb6lzhwu4.png"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tapCancel(_ sender: Any) {
        queue.cancelAllOperations()
    }
    
    @IBAction func tapDownload(_ sender: Any) {
        // Init operation queue
         queue = OperationQueue()
        // Init NSBlockOperation
        let operation1 = BlockOperation {
            let image1 = self.downloadImageWithURL(url: self.img3URL)
            OperationQueue.main.addOperation({
                self.imgView1.image = image1
            })
        }
        operation1.completionBlock = {
            print("Operation1: Download image1 complete")
        }
        queue.addOperation(operation1)
        
        
        //Operation 2
        let operation2 = BlockOperation {
            let image2 = self.downloadImageWithURL(url: self.img1URL)
            OperationQueue.main.addOperation({
                self.imgView2.image = image2
            })
        }
        // add dependency for 2
        operation2.addDependency(operation1)
        operation2.completionBlock = {
            print("Operation 2: ImageView2 download complete")
        }
        
        queue.addOperation(operation2)
        
        let operation3 = BlockOperation(block: {
            let image3 = self.downloadImageWithURL(url: self.img2URL)
            OperationQueue.main.addOperation({
                self.imgView3.image = image3
            })
        })
        
        operation3.completionBlock = {
            print("Operation 3 completed")
        }
        queue.addOperation(operation3)
    }
    
    func downloadImageWithURL(url: String) -> UIImage! {
        do {
            let data = try Data(contentsOf: URL(string: url)!)
            return UIImage(data: data)
        } catch {
            return nil
        }
    }

}

