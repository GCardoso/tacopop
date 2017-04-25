//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Guilherme Gomes Cardoso on 4/22/17.
//  Copyright © 2017 Guilherme Cardoso. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
}


