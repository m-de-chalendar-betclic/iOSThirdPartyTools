//
//  BetclicView.swift
//  Aww
//
//  Created by Maxime de Chalendar on 01/12/2018.
//  Copyright © 2018 Aww. All rights reserved.
//

import UIKit
import Reusable

final class BetclicView: UIView, NibOwnerLoadable {

    @IBOutlet private weak var imageView: UIImageView!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNibContent()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNibContent()
    }

}
