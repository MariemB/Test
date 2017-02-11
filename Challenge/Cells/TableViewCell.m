//
//  TableViewCell.m
//  Challenge
//
//  Created by Mariem on 11/02/2017.
//  Copyright © 2017 Fabulous. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(id)initNumberCellWithNumber:(NSString *)number{
	self = [[[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil]objectAtIndex:0];
	
	if(self){
		self.layoutMargins = UIEdgeInsetsZero;
		numberLabel.text = number;
	}
	return self;
}

@end
