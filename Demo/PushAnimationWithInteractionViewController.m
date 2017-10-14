//
//  PushAnimationWithInteractionViewController.m
//  Demo
//
//  Created by xulinfeng on 2017/10/15.
//  Copyright © 2017年 markejave. All rights reserved.
//

#import <MDTransitioning/MDTransitioning.h>
#import <VCTransitionsLibrary/CEHorizontalSwipeInteractionController.h>
#import <VCTransitionsLibrary/CEVerticalSwipeInteractionController.h>
#import <MDTransitioning_VCTransitionsLibrary/MDTransitioning+VCTransitionsLibrary.h>

#import "PushAnimationWithInteractionViewController.h"

@interface PushAnimationWithInteractionViewController ()

@end

@implementation PushAnimationWithInteractionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Push  Animation Wiht Interaction";
}

- (id<MDInteractionController>)requirePopInteractionController{
//    CEHorizontalSwipeInteractionController *controller =  [CEHorizontalSwipeInteractionController interactionControllerWithViewController:self operation:CEInteractionOperationPop];
//    controller.popOnRightToLeft = NO;
//    return controller;
    
    return [CEVerticalSwipeInteractionController interactionControllerWithViewController:self operation:CEInteractionOperationPop];
}

@end
