//
//  GNFACWeatherViewController.m
//  GNFACiOSProtoOne
//
//  Created by Ned Hogan on 11/29/13.
//  Copyright (c) 2013 Ned Hogan. All rights reserved.
//

#import "GNFACWeatherViewController.h"

@interface GNFACWeatherViewController ()

@end

@implementation GNFACWeatherViewController

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
    NSString *fullURL = @"http://www.mtavalanche.com/weather?theme=mobile_simple";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    self.weatherWebView.scalesPageToFit = YES;
    [_weatherWebView loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
