//
//  TripCardCollectionCell.swift
//  TripCard
//
//  Created by Michael Tolfo on 1/1/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

protocol TripCardCollectionCellDelegate
{
    func didLikeButtonPressed(cell: TripCardCollectionCell)
}

class TripCardCollectionCell: UICollectionViewCell
{
   
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var cityLabel:UILabel!
    @IBOutlet var countryLabel:UILabel!
    @IBOutlet var totalDaysLabel:UILabel!
    @IBOutlet var priceLabel:UILabel!
    @IBOutlet var likeButton:UIButton!
    var delegate:TripCardCollectionCellDelegate?
    var isLiked:Bool = false
        {
            didSet //when isLiked property is stored, the didSet will fire immediatel
            {
                if isLiked
                {
                    likeButton.setImage(UIImage(named: "heartfull"), forState: .Normal)
                }
                else
                {
                    likeButton.setImage(UIImage(named: "heart"), forState: .Normal)
                }
            }
        }
    
    @IBAction func likeButtonTapped(sender: AnyObject)
    {
        delegate?.didLikeButtonPressed(self)
    }
    
}
