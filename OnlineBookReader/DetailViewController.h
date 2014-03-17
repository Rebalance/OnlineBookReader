//
//  DetailViewController.h
//  OnlineBookReader
//
//  Created by Rebalance on 10/3/14.
//  Copyright (c) 2014 Rebalance. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
