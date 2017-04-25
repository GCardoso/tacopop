//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Guilherme Gomes Cardoso on 4/22/17.
//  Copyright © 2017 Guilherme Cardoso. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
        print("register was called")
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView{
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T
            else {
                fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        print("dequeue was called")
        return cell
    }
    
}


extension UICollectionViewCell: ReusableView {}
