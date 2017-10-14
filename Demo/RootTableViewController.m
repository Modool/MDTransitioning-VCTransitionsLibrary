//
//  RootTableViewController.m
//  Demo
//
//  Created by xulinfeng on 2017/10/15.
//  Copyright © 2017年 markejave. All rights reserved.
//

#import <MDTransitioning/MDTransitioning.h>
#import "RootTableViewController.h"
#import "PushAnimationViewController.h"
#import "PushAnimationWithInteractionViewController.h"

#import "PresentAnimationViewController.h"
#import "PresentAnimationWithInteractionViewController.h"

@interface RootTableViewController ()

@end

@implementation RootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Demo";
    self.tableView.estimatedRowHeight = 44;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([UITableViewCell class])];
    
    NSArray<NSString *> *titles = @[@"push  animation",
                                    @"push  animation with interaction",
                                    @"present  animation",
                                    @"present  animation with interaction"];
    
    cell.textLabel.text = titles[[indexPath row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch ([indexPath row]) {
        case 0: [[self navigationController] pushViewController:[PushAnimationViewController new] animated:YES]; break;
        case 1: [[self navigationController] pushViewController:[PushAnimationWithInteractionViewController new] animated:YES]; break;
            
        case 2: {
            UIViewController *viewController = [PresentAnimationViewController new];
            viewController.transitioningDelegate = [MDPresentionControllerDelegate delegateWithReferenceViewController:self];
            
            [self presentViewController:viewController animated:YES completion:nil];
        }
            break;
            
        case 3: {
            UIViewController *viewController = [PresentAnimationWithInteractionViewController new];
            viewController.transitioningDelegate = [MDPresentionControllerDelegate delegateWithReferenceViewController:self];
            
            [self presentViewController:viewController animated:YES completion:nil];
        }
            break;
        default: break;
    }
}

@end
