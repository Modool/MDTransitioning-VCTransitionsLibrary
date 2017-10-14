//
//  PushAnimationViewController.m
//  Demo
//
//  Created by xulinfeng on 2017/10/15.
//  Copyright © 2017年 markejave. All rights reserved.
//

#import <MDTransitioning/MDTransitioning.h>
#import <VCTransitionsLibrary/CECardsAnimationController.h>
#import <MDTransitioning_VCTransitionsLibrary/MDTransitioning+VCTransitionsLibrary.h>

#import "PushAnimationViewController.h"

@interface PushAnimationViewController ()

@end

@implementation PushAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Push  Animation";
    self.view.backgroundColor = [UIColor redColor];
}

#pragma mark - MDNavigationPopController

- (id<MDNavigationAnimatedTransitioning>)animationForNavigationOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController;{
//    if (operation == UINavigationControllerOperationPop) {
        return [[CECardsAnimationController alloc] initWithNavigationControllerOperation:operation fromViewController:fromViewController toViewController:toViewController];
//    }
//    return [super animationForNavigationOperation:operation fromViewController:fromViewController toViewController:toViewController];
}

@end
