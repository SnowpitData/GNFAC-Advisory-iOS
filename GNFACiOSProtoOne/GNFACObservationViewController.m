//
//  GNFACObservationViewController.m
//  GNFACiOSProtoOne
//
//  Created by Ned Hogan on 11/29/13.
//  Copyright (c) 2013 Ned Hogan. All rights reserved.
//

#import "GNFACObservationViewController.h"

@interface GNFACObservationViewController ()

@end

@implementation GNFACObservationViewController

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
    NSString *fullURL = @"http://www.mtavalanche.com/node/add/snow-observations?theme=mobile_simple";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    self.observationWebView.scalesPageToFit = YES;
    [_observationWebView loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
