//
//  BookViewController.swift
//  quanlysach
//
//  Created by  User on 22.05.2026.
//

import UIKit

class BookViewController: UIViewController {

    let books = [
        Book(
            id: "1",
            name: "Swift Programming",
            author: "Apple",
            price: 120000,
            stock: 5,
            category: "Programming",
            imageUrl: "",
            description: "Learn Swift"
        ),

        Book(
            id: "2",
            name: "iOS Development",
            author: "Steve Jobs",
            price: 150000,
            stock: 3,
            category: "Technology",
            imageUrl: "",
            description: "Build iOS App"
        )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        print(books)
    }
}
