//
//  ViewController.swift
//  Aww
//
//  Created by Maxime de Chalendar on 01/12/2018.
//  Copyright © 2018 Aww. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let elements: [Aww] = [
        Aww(image: UIImage(named: "aww1")!, description: "Cutest father son picture I've ever seen"),
        Aww(image: UIImage(named: "aww2")!,  description: "This is Nala, she frequently stays at the kennel I work at :)"),
        Aww(image: UIImage(named: "aww3")!, description: "Those ears"),
        Aww(image: UIImage(named: "aww4")!, description: "I'm convinced we've adopted a stuffed animal."),
        Aww(image: UIImage(named: "aww5")!, description: "I’ve waited 26 years to be able to get my own puppy. Reddit, meet Odin!"),
    ]

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
        betclicView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20).isActive = true
        betclicView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }



    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AwwCell", for: indexPath) as? AwwCell else {
            fatalError("Cell wasn't registered")
        }
        cell.setup(aww: elements[indexPath.row])
        return cell
    }

}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        elements[indexPath.row].ToggleFavorite()
        tableView.reloadRows(at: [indexPath], with: .automatic)
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
