//
//  HomeVM.swift
//  n
//
//  Created by cloud on 20/01/22.
//

import UIKit

class HomeVM {
    var objPostList : [PostModel?] = []
    func getPost(completionHandler : @escaping ([PostModel])->() ){
        let objNetworking = NetWorking()
       
    
        objNetworking.getPostFromServer(serverUrl: Server.kPost.rawValue) {objmodel in
            
            self.objPostList = objmodel
            completionHandler(objmodel)
        }
    }
    
    func getPostFor(row:Int) -> PostModel? {
        if objPostList.count > 0 {
            return objPostList[row]
        }
        return nil
        
    }
    func gitTotalPost() -> Int {
        return objPostList.count
    }

    

}
