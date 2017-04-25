//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Guilherme Gomes Cardoso on 4/22/17.
//  Copyright © 2017 Guilherme Cardoso. All rights reserved.
//

import UIKit

protocol ReusableView: class {
    
}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
