//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Pavel Reshetov on 11/05/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
