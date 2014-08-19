//
//  KIViewController.m
//  ReachabilityRACExt
//
//  Created by kaiinui on 2014/08/19.
//  Copyright (c) 2014年 kaiinui. All rights reserved.
//

#import "KIViewController.h"
#import <ReactiveCocoa.h>
#import "Classes/Reachability+ReactiveCocoa.h"

@interface KIViewController ()

@end

@implementation KIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[Reachability rac_reachabilitySignal] subscribeNext:^(Reachability *x) {
        NSLog(@"%hhd", x.isReachable);
        NSLog(@"%hhd", x.isReachableViaWiFi);
        NSLog(@"%hhd", x.isReachableViaWWAN);
    }];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
