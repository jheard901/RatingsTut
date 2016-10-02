//
//  PlayerCell.h
//  RatingsTut
//
//  Created by User on 10/2/16.
//  Copyright © 2016 User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel* nameLabel;
@property (nonatomic, strong) IBOutlet UILabel* gameLabel;
@property (nonatomic, strong) IBOutlet UIImageView* ratingImageView;

@end
