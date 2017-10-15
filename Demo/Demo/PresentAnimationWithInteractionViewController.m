//
//  PresentAnimationWithInteractionViewController.m
//  Demo
//
//  Created by xulinfeng on 2017/10/15.
//  Copyright © 2017年 markejave. All rights reserved.
//

#import <MDTransitioning/MDTransitioning.h>
#import <VCTransitionsLibrary/CEHorizontalSwipeInteractionController.h>
#import <VCTransitionsLibrary/CEVerticalSwipeInteractionController.h>
#import <MDTransitioning_VCTransitionsLibrary/MDTransitioning+VCTransitionsLibrary.h>
#import "PresentAnimationWithInteractionViewController.h"

@interface PresentAnimationWithInteractionViewController ()

@end

@implementation PresentAnimationWithInteractionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Present  Animation Wiht Interaction";

    CEVerticalSwipeInteractionController *interactionController = [CEVerticalSwipeInteractionController interactionControllerWithViewController:self operation:CEInteractionOperationDismiss];
    
    self.presentionInteractionController = interactionController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
