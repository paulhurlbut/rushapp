//
//  Fraternity.h
//  rushapp
//
//  Created by Brett Meyer on 11/1/15.
//
#import <Foundation/Foundation.h>

@interface Fraternity : NSObject
/*{
    NSString * fraternityName;
    NSArray * contactList;
    NSArray * eventList;
    NSString * address;
    NSString * history;
    NSURL * url;
}*/

@property (nonatomic) NSString * fraternityName;
@property (nonatomic) NSMutableArray * contactList;
@property (nonatomic) NSArray * eventList;
@property (nonatomic) NSString * address;
@property (nonatomic) NSString * history;
@property (nonatomic) NSURL * url;
@property (nonatomic) NSInteger fraternityID;

- (id)initWithDictionary:(NSDictionary *)dictionary;
-(void)encodeWithCoder :(NSCoder *)encode;
-(id) initWithCoder : (NSCoder *)decode;

//-(instancetype)initWithName:(NSString *) name Address:(NSString *) address ContactList:(NSArray *)contactList EventList:(NSArray *)eventList;
@end