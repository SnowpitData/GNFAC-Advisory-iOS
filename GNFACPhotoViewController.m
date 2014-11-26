//
//  GNFACPhotoViewController.m
//  GNFACiOSProtoOne
//
//  Created by Ned Hogan on 11/29/13.
//  Copyright (c) 2013 Ned Hogan. All rights reserved.
//

#import "GNFACPhotoViewController.h"

@interface GNFACPhotoViewController ()

@end

@implementation GNFACPhotoViewController

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
    NSString *fullURL = @"http://www.mtavalanche.com/photo?theme=mobile_simple";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    self.photoWebView.scalesPageToFit = YES;
    [_photoWebView loadRequest:requestObj];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
