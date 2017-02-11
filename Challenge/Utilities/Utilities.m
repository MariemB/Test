//
//  Utilities.m
//  Challenge
//
//  Created by Mariem on 11/02/2017.
//  Copyright © 2017 Fabulous. All rights reserved.
//

#import "Utilities.h"
#import "AppDelegate.h"

@implementation Utilities

+(id)getMainStoryBoardWithIdentifier:(NSString *)identifier{
	if (SHARED_APPDELEGATE.storyboard == nil) {
		SHARED_APPDELEGATE.storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
	}
	return [SHARED_APPDELEGATE.storyboard instantiateViewControllerWithIdentifier:identifier];
}

@end
