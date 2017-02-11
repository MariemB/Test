//
//  LoaderViewController.m
//  Challenge
//
//  Created by Mariem on 11/02/2017.
//  Copyright © 2017 Fabulous. All rights reserved.
//

#import "LoaderViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface LoaderViewController ()
@end

@implementation LoaderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	progressBar.maxValue = _progressValue;
}

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:YES];
	
	[UIView animateWithDuration:1.f animations:^{
		progressBar.value = _progressValue;
	}];

}
@end
