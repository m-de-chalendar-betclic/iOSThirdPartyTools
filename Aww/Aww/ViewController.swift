//
//  ViewController.swift
//  Aww
//
//  Created by Maxime de Chalendar on 01/12/2018.
//  Copyright © 2018 Aww. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // swiftlint:disable line_length
    private let elements: [Aww] = [
        Aww(image: Asset.aww1.image, description: "Cutest father son picture I've ever seen"),
        Aww(image: Asset.aww2.image, description: "This is Nala, she frequently stays at the kennel I work at :)"),
        Aww(image: Asset.aww3.image, description: "Those ears"),
        Aww(image: Asset.aww4.image, description: "I'm convinced we've adopted a stuffed animal."),
        Aww(image: Asset.aww5.image, description: "I’ve waited 26 years to be able to get my own puppy. Reddit, meet Odin!")
    ]
    // swiftlint:enable line_length

    override func viewDidLoad() {
        super.viewDidLoad()

        addBetclicView()
    }

    private func addBetclicView() {
        let betclicView = BetclicView(frame: .zero)
        betclicView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(betclicView)
        betclicView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        betclicView.widthAnchor.constraint(equalTo: betclicView.heightAnchor).isActive = true
        betclicView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20).isActive = true // swiftlint:disable:this line_length
        betclicView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as AwwCell
        cell.setup(aww: elements[indexPath.row])
        return cell
    }

}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        elements[indexPath.row].toggleFavorite()
        tableView.reloadRows(at: [indexPath], with: .automatic)
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
