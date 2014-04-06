//
//  ViewController.m
//  CloseTheGarage
//
//  Created by Colton Gyulay on 4/6/14.
//  Copyright (c) 2014 Colton Gyulay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.webView.delegate = self;
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"garage-close"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self performSelector:@selector(exit) withObject:nil afterDelay:1.0];
}

- (void)exit
{
    exit(0);
}

@end
