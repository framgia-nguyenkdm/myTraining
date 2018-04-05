//
//  ViewController.swift
//  GCD
//
//  Created by khuc.d.m.nguyen on 4/4/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadSyncImg(loadAsync: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadSyncImg(loadAsync: Bool) {
        let img1URL = "http://4hatsandfrugal.com/wp-content/uploads/2018/02/Black-Panther-Review-2.jpg"
        let img2URL = "http://www.thelocationguide.com/wp-content/uploads/2013/06/Man-of-Steel-in-Illinois.jpg"
        let img3URL = "https://i.kinja-img.com/gawker-media/image/upload/s--Kr4HLNpR--/c_scale,fl_progressive,q_80,w_800/xclhq4ovt3kpb6lzhwu4.png"
        let myQueue = DispatchQueue(label: "queue")
        
        
        if loadAsync {
            print("Load async")
            myQueue.async {
                do {
                    let data = try Data(contentsOf: URL(string: img1URL)!)
                    DispatchQueue.main.async {
                        self.imgView1.image = UIImage(data: data)
                    }
                } catch {}
            }
            myQueue.async {
                do {
                    let data = try Data(contentsOf: URL(string: img3URL)!)
                    DispatchQueue.main.async {
                        self.imgView2.image = UIImage(data: data)
                    }
                } catch {}
            }
            myQueue.async {
                do {
                    let data = try Data(contentsOf: URL(string: img2URL)!)
                    DispatchQueue.main.async {
                        self.imgView3.image = UIImage(data: data)
                    }
                } catch {}
            }
        } else {
            print("Load sync")
            myQueue.sync {
                do {
                    let data = try Data(contentsOf: URL(string: img1URL)!)
                    DispatchQueue.main.async {
                        self.imgView1.image = UIImage(data: data)
                    }
                } catch {}
            }
            myQueue.sync {
                do {
                    let data = try Data(contentsOf: URL(string: img3URL)!)
                    DispatchQueue.main.async {
                        self.imgView2.image = UIImage(data: data)
                    }
                } catch {}
            }
            myQueue.sync {
                do {
                    let data = try Data(contentsOf: URL(string: img2URL)!)
                    DispatchQueue.main.async {
                        self.imgView3.image = UIImage(data: data)
                    }
                } catch {}
            }
        }
    }

}

