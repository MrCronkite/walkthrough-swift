//
//  CourseCell.swift
//  Networking
//
//  Created by Alexey Efimov on 21/08/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class CourseCell: UITableViewCell {

    @IBOutlet var courseImage: UIImageView!
    @IBOutlet var courseNameLabel: UILabel!
    @IBOutlet var numberOfLessons: UILabel!
    @IBOutlet var numberOfTests: UILabel!
    
    func configure(with course: Course) {
        courseNameLabel.text = course.name
        numberOfLessons.text = "Number of lessons: \(course.number_of_lessons ?? 0)"
        numberOfTests.text = "Number of tests: \(course.number_of_tests ?? 0)"
        
        DispatchQueue.global().async {
            guard let imageUrl = URL(string: course.imageUrl!) else { return }
            guard let imageData = try? Data(contentsOf: imageUrl) else { return }
            
            DispatchQueue.main.async {
                self.courseImage.image = UIImage(data: imageData)
            }
        }
        
    }
}
