//
//  SearchViewController.m
//  OnlineBookReader
//
//  Created by Rebalance on 10/3/14.
//  Copyright (c) 2014 Rebalance. All rights reserved.
//

#import "SearchViewController.h"
#import "HjwzwSearchEngine.h"

@interface SearchViewController ()

@property (nonatomic, strong) IBOutlet UISearchBar* searchBar;

@end

@implementation SearchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)close:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (IBAction)search:(id)sender
{
    NSString* keyword = self.searchBar.text;
    HjwzwSearchEngine* engine = [[HjwzwSearchEngine alloc] init];
    [engine search:keyword success:^(NSArray *books) {
        
    } fail:^(NSError *error) {
        
    }];
}

@end
