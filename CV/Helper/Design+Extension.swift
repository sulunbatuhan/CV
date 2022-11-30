//
//  Design+Extension.swift
//  CV
//
//  Created by batuhan on 21.11.2022.
//

import UIKit

extension UIViewController{
     func design(){
        let tasarim = UINavigationBarAppearance()
        tasarim.backgroundColor = UIColor.systemBlue
        navigationItem.scrollEdgeAppearance = tasarim
        navigationItem.compactAppearance = tasarim
        navigationItem.standardAppearance = tasarim
    }
    
}
