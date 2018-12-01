//
//  Data.swift
//  Aww
//
//  Created by Maxime de Chalendar on 01/12/2018.
//  Copyright © 2018 Aww. All rights reserved.
//

import Foundation
import UIKit

final class Aww {
    let image : UIImage
    let description: String
    private(set) var isFavorite: Bool

    init(image: UIImage, description: String) {
        self.image = image
        self.description = description
        self.isFavorite = false
    }

    func ToggleFavorite() {
        isFavorite = !isFavorite
    }
}

