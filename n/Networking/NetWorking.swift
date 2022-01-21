//
//  NetWorking.swift
//  n
//
//  Created by cloud on 19/01/22.
//

import UIKit

class NetWorking {
    
    func getPostFromServer(serverUrl : String, compeletionHandler: @escaping ([PostModel]) -> ()) {
        
        URLSession.shared.dataTask(with: URL(string:serverUrl)!) { (data, response,error) in
            
            if let _ = error {
                print("unable to fetch data")
                return
            }
            
            do {
                let objPostlist = try JSONDecoder.init().decode([PostModel].self, from:data!)
                print(objPostlist)
                compeletionHandler(objPostlist)
            } catch {
                print("exception : \(error)")
            }
            
        }.resume()
        
    }
}
