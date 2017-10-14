//
//  PresentAnimationViewController.m
//  Demo
//
//  Created by xulinfeng on 2017/10/15.
//  Copyright © 2017年 markejave. All rights reserved.
//

#import <MDTransitioning/MDTransitioning.h>
#import <VCTransitionsLibrary/CECardsAnimationController.h>
#import <MDTransitioning_VCTransitionsLibrary/MDTransitioning+VCTransitionsLibrary.h>

#import "PresentAnimationViewController.h"

@interface PresentAnimationViewController ()

@end

@implementation PresentAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Present  Animation";
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id<MPresentionAnimatedTransitioning>)animationForPresentionOperation:(MDPresentionAnimatedOperation)operation fromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController{
//        if (operation == MDPresentionAnimatedOperationPresent) {
            return [[CECardsAnimationController alloc] initWithPresentionAnimatedOperation:operation fromViewController:fromViewController toViewController:toViewController];
//        }
//        return [super animationForPresentionOperation:operation fromViewController:fromViewController toViewController:toViewController];
}

@end
