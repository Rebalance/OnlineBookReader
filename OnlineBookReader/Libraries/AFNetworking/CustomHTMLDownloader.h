//
//  CustomHTMLDownloader.h
//  OnlineBookReader
//
//  Created by Rebalance on 10/3/14.
//  Copyright (c) 2014 Rebalance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CXMLDocument.h"

typedef void (^DownloadHTMLDidSuccess)(CXMLDocument *document);

@interface CustomHTMLDownloader : NSObject

+ (void)downloadHTMLcontent:(NSString*)urlString success:(DownloadHTMLDidSuccess)success fail:(NSError*)errorTop;

@end
