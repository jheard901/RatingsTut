//
//  GamePickerViewController.h
//  RatingsTut
//
//  Created by User on 10/5/16.
//  Copyright © 2016 User. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GamePickerViewController;

@protocol GamePickerViewControllerDelegate <NSObject>

-(void)gamePickerViewController: (GamePickerViewController*)controller didSelectGame:(NSString*)game;

@end


@interface GamePickerViewController : UITableViewController


@property (nonatomic, weak) id <GamePickerViewControllerDelegate> delegate;
@property (nonatomic, strong) NSString* game;


@end
