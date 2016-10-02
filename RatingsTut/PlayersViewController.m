//
//  PlayersViewController.m
//  RatingsTut
//
//  Created by User on 10/1/16.
//  Copyright © 2016 User. All rights reserved.
//

#import "PlayersViewController.h"
#import "Player.h"
#import "PlayerCell.h"

@interface PlayersViewController ()

@end

@implementation PlayersViewController

@synthesize players;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.players count];
}


//so for my issue with struggling like hell to get a dang image to show up; I simply removed all references of the image from the "images" folder I imported it into within the project navigator, and imported them all directly into the project folder and referenced their filename (no paths required). This extra bit of info might help in the future: http://stackoverflow.com/questions/11499925/uiimage-imagenamed-does-not-find-image-within-blue-referenced-xcode-folder
- (UIImage*) imageForRating:(int)rating
{
    switch(rating)
    {
        case 1: return [UIImage imageNamed:@"1StarsSmall.png"];
        case 2: return [UIImage imageNamed:@"2StarsSmall.png"];
        case 3: return [UIImage imageNamed:@"3StarsSmall.png"];
        case 4: return [UIImage imageNamed:@"4StarsSmall.png"];
        case 5: return [UIImage imageNamed:@"5StarsSmall.png"];
    }
    return nil;
}

//my problem with the cell not showing the subtitle before is explained here: http://stackoverflow.com/questions/5190648/why-is-detailtextlabel-not-visible
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PlayerCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    Player* player = [self.players objectAtIndex:indexPath.row];
    
    //custom cell labels
    //UILabel* nameLabel = (UILabel*)[cell viewWithTag:100];
    cell.nameLabel.text = player.name;
    //UILabel* gameLabel = (UILabel*)[cell viewWithTag:101];
    cell.gameLabel.text = player.game;
    //UIImageView* ratingImageView = (UIImageView*)[cell viewWithTag:102];
    cell.ratingImageView.image = [self imageForRating:player.rating];
    
    //default cell labels
    //cell.textLabel.text = player.name;
    //cell.detailTextLabel.text = player.game;
    
    //change the highlighted color of a cell (from that awkward default gray; answer found here: http://stackoverflow.com/questions/1998775/uitableview-cell-selected-color
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor blueColor];
    [cell setSelectedBackgroundView:bgColorView];
    
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // Delete the row from the data source
        [self.players removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationFade];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert)
    {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
