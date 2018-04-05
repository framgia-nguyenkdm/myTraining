//
//  ViewBController.swift
//  GCD
//
//  Created by khuc.d.m.nguyen on 4/4/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewBController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadImage() {
//        let url = "https://i.kinja-img.com/gawker-media/image/upload/s--Kr4HLNpR--/c_scale,fl_progressive,q_80,w_800/xclhq4ovt3kpb6lzhwu4.png"
         let url = "http://www.thelocationguide.com/wp-content/uploads/2013/06/Man-of-Steel-in-Illinois.jpg"
        let downloadgroup = DispatchGroup()
        downloadgroup.enter()
        do {
            let dataImg = try Data(contentsOf: URL(string: url)!)
            DispatchQueue.main.async {
                self.imgView.image = UIImage(data: dataImg)
               
            }
            downloadgroup.leave()
        } catch {
            print("Error")
        }
        downloadgroup.notify(queue: DispatchQueue.main) {
            self.showContentAfterComplete()
        }
        
    }
    
    func showContentAfterComplete() {
        let alert = UIAlertController(title: "Download", message: "Download image completed", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        
        self.present(alert, animated: true, completion: nil)
        
    }

}
