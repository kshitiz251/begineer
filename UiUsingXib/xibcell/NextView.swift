//
//  NextView.swift
//  xibcell
//
//  Created by Kshitiz Gupta on 09/02/17.
//  Copyright © 2017 Kshitiz Gupta. All rights reserved.
//

import UIKit

class NextView: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
    let data : [[String:String]] = [
        
        ["title" : "Name", "placeholder" : "John Doe"],
        ["title" : "Phone", "placeholder" : "9873961948"],
        ["title" : "email", "placeholder" : "john@doe.com"],
        ["title" : "Height", "placeholder" : "5'11\""],
        ["title" : "Weight", "placeholder" : "80 lbs"],
        ["title" : "Gender", "placeholder" : "Male"],
        ["title" : "Blood", "placeholder" : "B+"],
        ["title" : "Birthday", "placeholder" : "January, 19 1987"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     mainTableView.dataSource = self
     mainTableView.delegate = self
        
    let cellNib = UINib(nibName: "TitleCell", bundle: nil)
    mainTableView.register(cellNib, forCellReuseIdentifier: "TitleCellID")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
    
extension NextView : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print(#function)
        print(section)
        
        return data.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(#function)
        print("indexPath.section : \(indexPath.section)")
        print("indexPath.row : \(indexPath.row)")
        
        if indexPath.row == 0{
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "profileCellID", for: indexPath) as! profileCell
            return cell1
        
        }else{
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "TitleCellID", for: indexPath) as! TitleCell
            
            cell2.configureWithData(data[indexPath.row])
            
            return cell2
            
           }

    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
                return 160
        } else {
                return 80
        }
        
    }
    
    
}
    



class profileCell : UITableViewCell{
    
    @IBOutlet weak var ProfileImage: UIImageView!
    
    @IBOutlet weak var ProfileAddBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.ProfileImage.clipsToBounds = true
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        self.ProfileImage.layer.cornerRadius = self.ProfileImage.frame.height / 2
        self.ProfileImage.layer.borderColor = UIColor.white.cgColor
        }
}

class ProfSave : UITableViewCell{
    @IBOutlet weak var ProfSaveBut: UIButton!
    
}

