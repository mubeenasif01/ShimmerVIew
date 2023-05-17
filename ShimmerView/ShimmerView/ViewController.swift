//
//  ViewController.swift
//  ShimmerView
//
//  Created by Mubeen on 17/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var discriptionTextView: UITextView!
    @IBOutlet weak var imageParentView: ShimmerView!
    @IBOutlet weak var titleParentView: ShimmerView!
    @IBOutlet weak var subTitleParentView: ShimmerView!
    @IBOutlet weak var discriptionParentView: ShimmerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupView()
    }
    
    
    
    @IBAction func startTapped(_ sender: Any) {
        startShimmer()
    }
    
    @IBAction func stopTapped(_ sender: Any) {
        stopShimmer()
    }
}
extension ViewController{
    // MARK: Helper Methods
    
    /// Method for setup Views
    func setupView(){
        self.imageParentView.layer.cornerRadius = imageParentView.frame.width / 2
        self.titleParentView.layer.cornerRadius = 5
        self.subTitleParentView.layer.cornerRadius = 5
        self.discriptionParentView.layer.cornerRadius = 5
        self.imageParentView.layer.masksToBounds = true
    }
    
    /// Method for start Shimmer effect
    func startShimmer(){
        self.imageParentView.startAnimating()
        self.titleParentView.startAnimating()
        self.subTitleParentView.startAnimating()
        self.discriptionParentView.startAnimating()
    }
    
    /// Method for stop Shimmer effect
    func stopShimmer(){
        self.imageParentView.stopAnimating()
        self.titleParentView.stopAnimating()
        self.subTitleParentView.stopAnimating()
        self.discriptionParentView.stopAnimating()
    }
    
}

