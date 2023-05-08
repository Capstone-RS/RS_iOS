//
//  UIView+.swift
//  RS_iOS
//
//  Created by 황찬미 on 2023/05/08.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
}
