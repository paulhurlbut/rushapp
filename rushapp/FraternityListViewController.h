//
//  FraternityListView.h
//  rushapp
//
//  Created by Brett Meyer on 11/1/15.
//  Copyright © 2015 Paul Hurlbut. All rights reserved.
//
#import <UIKit/UIKit.h>
@class Database;

@interface FraternityListViewController : UITableViewController <UITableViewDelegate>


@property (nonatomic) NSMutableArray * fraternityList;
@end
