//
//  Network.m
//  natLangMockup
//
//  Created by Mariah Flaim on 5/1/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import "Network.h"
#import <Firebase/Firebase.h>
@implementation Network

/**
 * @brief return API singleton
 * @return sharedNetwork    pointer to singleton
 */
+ (Network *)sharedNetwork{
    static Network* _sharedAPI = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedAPI = [[self alloc]init];
    });
    
    return _sharedAPI;
}


-(void) getCourses{
    self.firebaseRef = [[Firebase alloc] initWithUrl:@"https://modernlang.firebaseio.com/courses"];
    [self.firebaseRef observeEventType:FEventTypeValue withBlock:^(FDataSnapshot *snapshot){
        NSLog(@"WHOA: %@",snapshot.value);
        [[Models sharedModel] setCoursesWithDictionary:snapshot.value];
        [self.delegate courseDownloaded];
        
    }];
    
}




@end
