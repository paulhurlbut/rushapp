//
//  EventInformationViewController.m
//  rushapp
//
//  Created by Brett Meyer on 11/15/15.
//  Copyright © 2015 Paul Hurlbut. All rights reserved.
//

#import "EventInformationViewController.h"
#import "Fraternity.h"
#import "Event.h"
#import "Database.h"

@interface EventInformationViewController ()
@property (weak, nonatomic) IBOutlet UILabel *eventName;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *desc;
@property (weak, nonatomic) IBOutlet UILabel *fraternityName;

@end

@implementation EventInformationViewController

- (void)viewWillAppear {
    [self.navigationController setToolbarHidden:YES];
}

- (void)viewDidLoad {
    self.desc.text = self.currentEvent.desc;
    self.desc.numberOfLines = 0;
    self.navigationItem.title = self.currentEvent.eventName;
    for (Fraternity * f in [[Database sharedDatabase] fraternityList]) {
        if([f.fraternityID isEqual:self.currentEvent.fraternityid])
        {
            self.fraternityName.text = f.fraternityName;
        }
    }
    self.address.text = self.currentEvent.place;
    self.date.text = self.currentEvent.time;
    self.desc.text = self.currentEvent.desc;
    [self.desc sizeToFit];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
