//
//  TableViewCell.h
//  Challenge
//
//  Created by Mariem on 11/02/2017.
//  Copyright © 2017 Fabulous. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
{
	IBOutlet UILabel *numberLabel;
}

-(id)initNumberCellWithNumber:(NSString *)number;

@end
