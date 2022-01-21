//
//  HomeVC.swift
//  n
//
//  Created by cloud on 19/01/22.
//

import UIKit

class HomeVC: UIViewController {
    
    var postList:[PostModel?] = []
    
    var viewModel: HomeVM?

    @IBOutlet weak var objTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewModel = HomeVM()
    
        
        viewModel?.getPost() { objModel in
            self.postList = objModel
            
            DispatchQueue.main.async {
                self.objTableView.reloadData()
            }
            
        }
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let objPostCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell
        
        let post = postList[indexPath.row]
        
        objPostCell?.setData(row: indexPath.row, viewModel: viewModel)
        return objPostCell!
    }
    
    
}

extension HomeVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        let objDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as? DetailsVC
        
        objDetailsVC?.postModel = postList[indexPath.row]
        
        
        
        self.navigationController?.pushViewController(objDetailsVC!, animated: true)
        
    }
    
}
