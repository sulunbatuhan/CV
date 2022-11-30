//
//  Content.swift
//  CV
//
//  Created by batuhan on 9.11.2022.
//

import UIKit

class Content {
    var pageTitle : String
    var icon : String
    var content : String
    
    internal init(pageTitle: String, icon: String, content: String) {
        self.pageTitle = pageTitle
        self.icon = icon
        self.content = content
    }
   
}

struct ViewModelContent{
    let Content : Content

    var PageTitle : String{
        return Content.pageTitle
    }
    var Icon : String{
        return Content.icon
    }
    var content : String{
        return Content.content
    }
}
