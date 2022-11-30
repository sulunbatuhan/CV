//
//  PanModal.swift
//  CV
//
//  Created by batuhan on 7.11.2022.
//

import UIKit


protocol DetailVCProtocol:AnyObject{
    func setDesign()
    func setDetail()
}


final class DetailVC: UIViewController {

    @IBOutlet weak var contentLabel: UILabel!
    private lazy var detailViewModel = DetailViewModel()
    
    
    var content :  ViewModelContent?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailViewModel.view = self
        detailViewModel.viewDidLoad() 
        
       
    }
    

}

extension DetailVC : DetailVCProtocol{
    func setDetail() {
        if let label = content{
             contentLabel.text = label.content
             title = label.PageTitle
         }
    }
    
    func setDesign() {
        self.design()
    }
    
    
}










