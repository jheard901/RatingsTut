//
//  PlayersViewController.h
//  RatingsTut
//
//  Created by User on 10/1/16.
//  Copyright © 2016 User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

//The tutorial being followed: https://www.raywenderlich.com/5138/beginning-storyboards-in-ios-5-part-1
//The 2nd part of tutorial to resume with: https://www.raywenderlich.com/5191/beginning-storyboards-in-ios-5-part-2
@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray* players;

@end
