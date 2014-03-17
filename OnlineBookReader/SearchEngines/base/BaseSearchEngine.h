//
//  BaseSearchEngine.h
//  OnlineBookReader
//
//  Created by Rebalance on 10/3/14.
//  Copyright (c) 2014 Rebalance. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BaseBook.h"


typedef void (^BaseSearchDidSuccess)(NSArray *books);
typedef void (^BaseFail)(NSError* error);

@interface BaseSearchEngine : NSObject {
    
    @protected
    NSString* _host;
    
}

- (NSString*)searchURL:(NSString*)keyword;

- (void)search:(NSString*)bookname success:(BaseSearchDidSuccess)successBlock fail:(BaseFail)failBlock;

- (void)download:(BaseBook*)book;

@end
