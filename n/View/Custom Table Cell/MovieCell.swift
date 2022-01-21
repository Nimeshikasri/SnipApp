//
//  MovieCell.swift
//  n
//
//  Created by cloud on 19/01/22.
//

import UIKit

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var bodyLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(row: Int, viewModel: HomeVM?) {
        
        let post = viewModel?.getPostFor(row: row)
        
        titleLabel.text = post?.title ?? ""
        bodyLabel.text = post?.body ?? ""
    }
}


