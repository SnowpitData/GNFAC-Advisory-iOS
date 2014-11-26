//
//  ViewController.m
//  GNFACiOSProtoOne
//
//  Created by Ned Hogan on 11/29/13.
//  Copyright (c) 2013 Ned Hogan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *fullURL = @"http://national-map.jhavalanche.org/iframe.php?center=GNFAC";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    self.mapWebView.scalesPageToFit = YES;
    [_mapWebView loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
