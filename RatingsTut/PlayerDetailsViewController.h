//
//  PlayerDetailsViewController.h
//  RatingsTut
//
//  Created by User on 10/4/16.
//  Copyright © 2016 User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamePickerViewController.h"

@class Player;
@class PlayerDetailsViewController;

//this delegate protocol is used to communicate back from the AddPlayer view to the main view of listed Players
@protocol PlayerDetailsViewControllerDelegate <NSObject>

- (void)playerDetailsViewControllerDidCancel: (PlayerDetailsViewController*)controller;

//- (void)playerDetailsViewControllerDidSave:(PlayerDetailsViewController*)controller;

- (void)playerDetailsViewController:(PlayerDetailsViewController*)controller didAddPlayer:(Player*)player;

@end


@interface PlayerDetailsViewController : UITableViewController <GamePickerViewControllerDelegate>

@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;


-(IBAction)cancel:(id)sender;
-(IBAction)done:(id)sender;


@end
