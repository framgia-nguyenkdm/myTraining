//
//  ViewController.swift
//  TableViewAdvance
//
//  Created by khuc.d.m.nguyen on 4/4/18.
//  Copyright © 2018 khuc.d.m.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    var movies = [Movie]()
    var page = 1
    var isLoadMore = false
    var isLoadNew = false
    var refreshControl: UIRefreshControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        refreshControl = UIRefreshControl()
        myTableView.addSubview(refreshControl)
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshControl.tintColor = UIColor.red
        refreshControl.addTarget(self, action: #selector(completedLoading), for: .valueChanged)
        
        
        getListMovie()
        self.myTableView.estimatedRowHeight = 150
        self.myTableView.rowHeight = UITableViewAutomaticDimension
        myTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        
    }
    
    @objc func completedLoading(){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            print("Hello i am doing refresh")
            self.refreshControl.endRefreshing()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController {
    
    func getListMovie() {
        page = 1
        APIService.sharedInstance.getListMovie(url: APIUrls.getListMovies, page: page, completionHandler: { [weak self] (json) in
            if let jsonArr = json["results"].array {
                self?.movies.removeAll()
                for movie in jsonArr {
                    let myMovie = Movie.init(data: movie)
                    self?.movies.append(myMovie)
                }
            }
            
            if (self?.movies.count)! < 20 {
                self?.isLoadMore = false
            } else {
                self?.isLoadMore = true
            }
            self?.myTableView.reloadData()
            self?.page += 1
        }) { (error) in
            print(error)
        }
    }
    func loadMoreData() {
        if isLoadNew {
            return
        }
        APIService.sharedInstance.getListMovie(url: APIUrls.getListMovies, page: page, completionHandler: { [weak self] (json) in
            let count = self?.movies.count
            var arr : [Movie] = []
            
            if let jsonArray = json["results"].array{
                for movie in jsonArray {
                    let a = Movie.init(data: movie)
                    arr.append(a)
                }
            }
            self?.movies.append(contentsOf: arr)
            self?.page += 1
            if count! < (self?.movies.count)! {
                self?.isLoadMore = true
            } else {
                self?.isLoadMore = false
            }
            self?.myTableView.reloadData()
            self?.isLoadNew = false
        }) { (error) in
            
        }
    }
}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.myTableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = movies[indexPath.row].movieName
        cell.descriptionLabel.text = movies[indexPath.row].overview
        
        let queue = DispatchQueue(label: "myQueue")
        let myImgURL = "https://image.tmdb.org/t/p/w500" + movies[indexPath.row].imgLink
        print(myImgURL)
        
        queue.async {
            do {
                let data = try Data(contentsOf: URL(string: myImgURL)!)
                DispatchQueue.main.async {
                    cell.imgView.image = UIImage(data: data)
                }
                
            } catch {
                print("Error Download")
            }
        }
        
        if (indexPath.row == self.movies.count - 1) && (isLoadMore == true) {
            if !isLoadNew {
                self.loadMoreData()
                isLoadNew = true
            }
        }
        
        return cell
    }
}
