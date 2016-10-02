//
//  Player.h
//  RatingsTut
//
//  Created by User on 10/1/16.
//  Copyright © 2016 User. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* game;
@property (nonatomic, assign) int rating;

@end
