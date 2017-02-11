//
//  ViewController.m
//  Challenge
//
//  Created by Mariem on 11/02/2017.
//  Copyright © 2017 Fabulous. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "LoaderViewController.h"
#import "Utilities.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
	NSArray *numbersArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	numbersArray = [NSArray arrayWithObjects:@"6", @"7", @"8", @"9", @"10", nil];
	numbersTableView.tableFooterView = [UIView new];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return numbersArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
	return 45;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	NSString *cellIdentifier = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
	TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	if (!cell) {
		cell = [[TableViewCell alloc]initNumberCellWithNumber:[numbersArray objectAtIndex:indexPath.row]];
	}
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	[tableView deselectRowAtIndexPath:indexPath animated:NO];
	LoaderViewController *loaderViewController = [Utilities getMainStoryBoardWithIdentifier:LoaderViewController_Key];
	loaderViewController.progressValue = [[numbersArray objectAtIndex:indexPath.row]intValue];
	[self.navigationController pushViewController:loaderViewController animated:YES];
}
@end
