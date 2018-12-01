//
//  Cell.swift
//  Aww
//
//  Created by Maxime de Chalendar on 01/12/2018.
//  Copyright © 2018 Aww. All rights reserved.
//

import UIKit
import Reusable

final class AwwCell: UITableViewCell, Reusable {

    func setup(aww: Aww) {
        imageView?.image = aww.image
        textLabel?.text = aww.description
        accessoryType = aww.isFavorite ? .checkmark : .none
    }

}
