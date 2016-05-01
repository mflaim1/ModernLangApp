//
//  Network.h
//  natLangMockup
//
//  Created by Mariah Flaim on 5/1/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Firebase/Firebase.h>
#import "Models.h"
@protocol NetworkDelegate <NSObject>
@required
-(void) courseDownloaded;



@end
@interface Network : NSObject

+ (Network *)sharedNetwork; //pointer to singleton
@property(nonatomic, assign) id <NetworkDelegate> delegate;
@property (strong, nonatomic) Firebase *firebaseRef;
-(void) getCourses;
@end
