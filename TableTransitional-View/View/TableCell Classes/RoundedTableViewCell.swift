//
//  RoundedTableViewCell.swift
//  TableTransitional-View
//
//  Created by Neftali Samarey on 4/20/19.
//  Copyright © 2019 Neftali Samarey. All rights reserved.
//

import UIKit

class RoundedTableViewCell: UITableViewCell {
    
    // Connected to storyboard
    @IBOutlet weak var StoryboardOverlayView: UIView!
    @IBOutlet weak var imageViewBackground: UIImageView!
    @IBOutlet weak var bottomBarOverlay: UIView!
    @IBOutlet weak var itemNameLabel: UILabel!
    
    // PROGRAMMATICALLY (IGNORE FOR NOW)
    // Overlay view that sits on top of the cell's content view
    let overlayView: UIView = {
        let overlay = UIView()
        overlay.layer.cornerRadius = 8
        overlay.backgroundColor = UIColor.white
        return overlay
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentView.backgroundColor = UIColor.spanishYellow()
        styleContent()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
        // Configure the view for the selected state
    }
    
    private func styleContent() {
        
        StoryboardOverlayView.translatesAutoresizingMaskIntoConstraints = false
        imageViewBackground.translatesAutoresizingMaskIntoConstraints = false
        bottomBarOverlay.translatesAutoresizingMaskIntoConstraints = false
        
        StoryboardOverlayView.clipsToBounds = true
        bottomBarOverlay.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        StoryboardOverlayView.roundCorners()
        
        // Parent view (in reality, contentView is the parent)
        self.StoryboardOverlayView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8).isActive = true
        self.StoryboardOverlayView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        self.StoryboardOverlayView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        self.StoryboardOverlayView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        
        // Constraining the image background
        self.imageViewBackground.leadingAnchor.constraint(equalTo: self.StoryboardOverlayView.leadingAnchor, constant: 0).isActive = true
        self.imageViewBackground.trailingAnchor.constraint(equalTo: self.StoryboardOverlayView.trailingAnchor, constant: 0).isActive = true
        self.imageViewBackground.topAnchor.constraint(equalTo: self.StoryboardOverlayView.topAnchor, constant: 0).isActive = true
        self.imageViewBackground.bottomAnchor.constraint(equalTo: self.StoryboardOverlayView.bottomAnchor, constant: 0).isActive = true
        
        bottomBarOverlay.bottomAnchor.constraint(equalTo: self.imageViewBackground.bottomAnchor, constant: 0).isActive = true
        bottomBarOverlay.heightAnchor.constraint(equalToConstant: (self.imageViewBackground.bounds.height/2) - 10).isActive = true
        bottomBarOverlay.leadingAnchor.constraint(equalTo: imageViewBackground.leadingAnchor, constant: 0).isActive = true
        bottomBarOverlay.trailingAnchor.constraint(equalTo: imageViewBackground.trailingAnchor, constant: 0).isActive = true
    }

}

// I've setup an extension to allow the extending styling for the given views that use UIView. In this case, storyboardOverlay view.
extension UIView {
    func roundCorners() {
        self.layer.cornerRadius = 10
    }
}
