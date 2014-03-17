//
//  HjwzwSearchEngine.m
//  OnlineBookReader
//
//  Created by Rebalance on 10/3/14.
//  Copyright (c) 2014 Rebalance. All rights reserved.
//

#import "HjwzwSearchEngine.h"

@implementation HjwzwSearchEngine

- (id)init
{
    self = [super init];
    if (self) {
        _host = @"tw.hjwzw.com";
    }
    return self;
}

- (NSString*)searchURL:(NSString*)keyword
{
    NSString* searchURL = [NSString stringWithFormat:@"http://%@/List/%@", _host, keyword];
    return searchURL;
}


@end
