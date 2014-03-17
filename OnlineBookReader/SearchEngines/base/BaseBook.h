//
//  BaseBook.h
//  OnlineBookReader
//
//  Created by Rebalance on 10/3/14.
//  Copyright (c) 2014 Rebalance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseBook : NSObject

@property (nonatomic, strong, readonly) NSString* title;
@property (nonatomic, strong, readonly) NSString* aurthor;
@property (nonatomic, strong, readonly) NSString* url;

@end
