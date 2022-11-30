//  ViewController.swift
//  CV
//
//  Created by batuhan on 2.11.2022.

import UIKit

protocol HomeViewProtocol: AnyObject,SeguePerformable{
    func setTableView()
    func iconDesign()
   
}

final class ViewController: UIViewController {
    
    @IBOutlet private weak var myPhoto: UIImageView!
    @IBOutlet private weak var tableViewCV: UITableView!

   private lazy var homeViewModel =  HomeViewModel()
    
   override func viewDidLoad() {
        super.viewDidLoad()
        homeViewModel.view = self
        homeViewModel.viewDidLoad()
       
    }
   
}



    //MARK : Extension TableView
extension ViewController : TableViewSettings{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeViewModel.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = homeViewModel.getData(indexpath: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.iconImage.image = UIImage(systemName:  row.Icon)
        cell.cellLabel.text = row.PageTitle
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = homeViewModel.getData(indexpath: indexPath.row)
        homeViewModel.selectedCell(sender: row)
   }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailViewController"{
            if let rows = sender as? ViewModelContent{
                let destinationVC = segue.destination as! DetailVC
                destinationVC.content = rows
            }
        }
    }
}


extension ViewController : HomeViewProtocol{
   func iconDesign() {
        myPhoto.layer.cornerRadius = myPhoto.frame.size.width / 2
        myPhoto.clipsToBounds = true
        self.design()
    }
    
    func setTableView() {
        tableViewCV.delegate = self
        tableViewCV.dataSource = self
        tableViewCV.separatorStyle = .none
        tableViewCV.reloadData()
    }
    
    
}
