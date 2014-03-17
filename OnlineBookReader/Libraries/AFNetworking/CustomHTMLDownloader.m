//
//  CustomHTMLDownloader.m
//  OnlineBookReader
//
//  Created by Rebalance on 10/3/14.
//  Copyright (c) 2014 Rebalance. All rights reserved.
//

#import "CustomHTMLDownloader.h"
#import "AFHTTPRequestOperationManager.h"
#import "AFHTTPRequestOperation.h"
#import "AFURLResponseSerialization.h"



@implementation CustomHTMLDownloader

+ (void)downloadHTMLcontent:(NSString*)urlString success:(DownloadHTMLDidSuccess)success fail:(NSError*)error;
{
    NSURL *URL = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    AFHTTPRequestOperation *op = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    //    op.responseSerializer = [AFJSONResponseSerializer serializer];
    op.responseSerializer = [AFHTTPResponseSerializer serializer];
    [op setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSString *html = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"HTML: %@", html);
        NSError* parsingError = nil;
        CXMLDocument *doc = [[CXMLDocument alloc] initWithData:responseObject options:0 error:nil];
//        HTMLParser *parser = [[HTMLParser alloc] initWithString:html error:&parsingError];
        if (!parsingError) {
            if (success) {
                success(doc);
            }
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [[NSOperationQueue mainQueue] addOperation:op];
}

@end
