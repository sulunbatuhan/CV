//
//  SeguePerformable.swift
//  CV
//
//  Created by batuhan on 21.11.2022.
//


import UIKit

protocol SeguePerformable {
    func performSegue(identifier:SegueIdentifier, sender : Any?)
}


extension SeguePerformable where Self: UIViewController{
    func performSegue(identifier:SegueIdentifier,sender : Any?){
        self.performSegue(withIdentifier: identifier.rawValue, sender: sender)
    }
}


enum SegueIdentifier : String{
    case DetailViewController
}


