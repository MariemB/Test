//
//  LoaderViewController.h
//  Challenge
//
//  Created by Mariem on 11/02/2017.
//  Copyright © 2017 Fabulous. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MBCircularProgressBar/MBCircularProgressBarView.h>

@interface LoaderViewController : UIViewController
{
	IBOutlet MBCircularProgressBarView *progressBar;
}

@property (nonatomic, assign) int progressValue;

@end
