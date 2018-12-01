//
//  BetclicView.swift
//  Aww
//
//  Created by Maxime de Chalendar on 01/12/2018.
//  Copyright © 2018 Aww. All rights reserved.
//

import UIKit

final class BetclicView: UIView {

    @IBOutlet private weak var imageView: UIImageView!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    private func loadNib() {
        let nib = UINib(nibName: "BetclicView", bundle: Bundle(for: type(of: self)))
        if let nibContent = nib.instantiate(withOwner: self, options: nil) as? [UIView] {
            for view in nibContent {
                view.translatesAutoresizingMaskIntoConstraints = false
                addSubview(view)
                view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
                view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
                view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
                view.topAnchor.constraint(equalTo: topAnchor).isActive = true
            }
        }
    }

}
