//  ViewModelCV.swift
//  CV

//  Created by batuhan on 11.11.2022.

import UIKit
import CoreData

protocol HomeViewModelProtocol{
    
    var view : HomeViewProtocol? { get set }
    func viewDidLoad()
    func selectedCell(sender : ViewModelContent)
    
}
// View Model
final class HomeViewModel{
    weak var view : HomeViewProtocol?
    
    var datas = [Content]()
    
    func getCount()->Int{
        return datas.count
    }
    
    func getData(indexpath: Int)->ViewModelContent{
        let data = datas[indexpath]
        return ViewModelContent(Content: data)
 
    }
    func uploadData(){
        datas.append(Content(pageTitle: "Education", icon: "graduationcap", content: "Adnan Menderes University \nManagement Information System \n\n\nAnadolu University \nBrand Communication \n\nTechcareer.net \nIOS Developer Bootcamp"))
        datas.append(Content(pageTitle: "Projects", icon: "building.columns", content: "Note Projects \n\nFood Order \n\nFirebaseAuth"))
        datas.append(Content(pageTitle: "Medium", icon: "text.bubble", content: "Kingfisher \n\nTakılma Yap Gitsin"))
        datas.append(Content(pageTitle: "Contact", icon: "phone", content: "Github.com/sulunbatuhan \n\nTwitter.com/sulunbatuhan \n\nSulunbatuhan@yandex.com \n\nmedium.com/@sulunbatuhan"))
    }
}


extension HomeViewModel : HomeViewModelProtocol{
    func selectedCell(sender : ViewModelContent) {
        view?.performSegue(identifier: .DetailViewController, sender: sender )
    }
   
    
   func viewDidLoad() {
        view?.setTableView()
        view?.iconDesign()
        uploadData()
      
    }
    
}

