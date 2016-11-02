//
//  ViewController.swift
//  Giphy
//
//  Created by Sanjay Mali on 02/11/16.
//  Copyright © 2016 Sanjay. All rights reserved.
//

import UIKit

class Giphy_Controller:UICollectionViewController,UICollectionViewDelegateFlowLayout{
    let model = Model()
    override func viewDidLoad() {
        super.viewDidLoad()
        model.dataSource()
        if let patternImage = UIImage(named: "cool-pattern") {
            view.backgroundColor = UIColor(patternImage: patternImage)
        }
        collectionView!.backgroundColor = UIColor.clear
        collectionView!.contentInset = UIEdgeInsets(top: 80, left: 5, bottom: 10, right: 5)
        setupCollectionView()
    }
    func setupCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 8.0
        layout.minimumInteritemSpacing = 8.0
        self.collectionView!.autoresizingMask = [UIViewAutoresizing.flexibleHeight, UIViewAutoresizing.flexibleWidth]
        self.collectionView!.alwaysBounceVertical = true
        self.collectionView!.collectionViewLayout = layout
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailPage_Controller") as! DetailPage_Controller
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        //device screen size
        let width = UIScreen.main.bounds.size.width
        //calculation of cell size
        return CGSize(width: ((width / 2) - 16)   , height: 200)
    }
    
}

extension Giphy_Controller {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.images.count
    }
     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Giphy_Cell", for: indexPath as IndexPath) as! Giphy_Cell
        cell.backgroundColor = UIColor.white
        cell.layer.cornerRadius = 3.0
        cell.layer.masksToBounds = true
        cell.userImage.layer.borderWidth = 1
        cell.userImage.layer.masksToBounds = false
        cell.userImage.layer.borderColor = UIColor.gray.cgColor
        cell.userImage.layer.cornerRadius = cell.userImage.frame.height/2
        cell.userImage.clipsToBounds = true
        cell.userImage.image = model.images[indexPath.row]
        cell.userName.text =  model.name[indexPath.row]
        cell.userSatatus.text =  model.status[indexPath.row]
        return cell
    }
}
