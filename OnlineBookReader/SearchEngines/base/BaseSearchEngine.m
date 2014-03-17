//
//  BaseSearchEngine.m
//  OnlineBookReader
//
//  Created by Rebalance on 10/3/14.
//  Copyright (c) 2014 Rebalance. All rights reserved.
//

#import "BaseSearchEngine.h"
#import "CustomHTMLDownloader.h"
#import "CXMLDocument.h"

@implementation BaseSearchEngine

- (NSString*)searchURL:(NSString*)keyword
{
    return nil;
}

- (void)search:(NSString*)bookname success:(BaseSearchDidSuccess)successBlock fail:(BaseFail)failBlock
{
    // get search url
    NSString* searchURL = [self searchURL:bookname];
    // download url content
    [CustomHTMLDownloader downloadHTMLcontent:searchURL success:^(CXMLDocument *doc) {
        NSArray *nodes = [doc nodesForXPath:@"//td[@width='662']" error:nil];
        NSLog(@"hihi");
    } fail:nil];
}

- (void)download:(BaseBook*)book
{
}

@end
