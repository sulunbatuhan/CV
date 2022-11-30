//
//  DetailViewModel.swift
//  CV
//
//  Created by batuhan on 30.11.2022.
//

import UIKit

protocol DetailViewModelProtocol{
    var view : DetailVCProtocol? {get set}
    func viewDidLoad()
  
}


class DetailViewModel{
    weak var view: DetailVCProtocol?

    
    
}
extension DetailViewModel : DetailViewModelProtocol {

  func viewDidLoad() {
        view?.setDesign()
        view?.setDetail()
        
    }
    
}



