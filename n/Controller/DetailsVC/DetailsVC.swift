//
//  DetailsVC.swift
//  n
//
//  Created by cloud on 20/01/22.
//

import UIKit

class DetailsVC: UIViewController {
   
    @IBOutlet weak var userIdLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bodyLabel: UILabel!
    
    var postModel: PostModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        userIdLabel.text = "User Id - \(postModel?.userId ?? 0)"
        idLabel.text = "Post Id - \(postModel?.id ?? 0)"
        titleLabel.text = "Title - \(postModel?.title ?? "")"
        bodyLabel.text = "Body - \(postModel?.body ?? "")"
    }
}
