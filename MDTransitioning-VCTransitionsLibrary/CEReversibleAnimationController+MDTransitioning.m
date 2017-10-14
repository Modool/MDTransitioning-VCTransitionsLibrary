//
//  CEReversibleAnimationController+MDTransitioning.m
//  MDTransitioning-VCTransitionsLibrary
//
//  Created by Jave on 2017/9/24.
//  Copyright © 2017年 markejave. All rights reserved.
//

#import <objc/runtime.h>
#import "CEReversibleAnimationController+MDTransitioning.h"

@interface CEReversibleAnimationController (MDTransitioningPrivate)

@property (nonatomic, weak) UIViewController *fromViewController;

@property (nonatomic, weak) UIViewController *toViewController;

@property (nonatomic, assign) UINavigationControllerOperation navigationControllerOperation;

@property (nonatomic, assign) MDPresentionAnimatedOperation presentionAnimatedOperation;

@end

@implementation CEReversibleAnimationController (MDTransitioning)

- (UIViewController *)fromViewController{
    return objc_getAssociatedObject(self, @selector(fromViewController));
}

- (void)setFromViewController:(UIViewController *)fromViewController{
    objc_setAssociatedObject(self, @selector(fromViewController), fromViewController, OBJC_ASSOCIATION_ASSIGN);
}

- (UIViewController *)toViewController{
    return objc_getAssociatedObject(self, @selector(toViewController));
}

- (void)setToViewController:(UIViewController *)toViewController{
    objc_setAssociatedObject(self, @selector(toViewController), toViewController, OBJC_ASSOCIATION_ASSIGN);
}

- (UINavigationControllerOperation)navigationControllerOperation{
    return [objc_getAssociatedObject(self, @selector(navigationControllerOperation)) integerValue];
}

- (void)setNavigationControllerOperation:(UINavigationControllerOperation)navigationControllerOperation{
    objc_setAssociatedObject(self, @selector(navigationControllerOperation), @(navigationControllerOperation), OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (MDPresentionAnimatedOperation)presentionAnimatedOperation{
    return [objc_getAssociatedObject(self, @selector(presentionAnimatedOperation)) integerValue];
}

- (void)setPresentionAnimatedOperation:(MDPresentionAnimatedOperation)presentionAnimatedOperation{
    objc_setAssociatedObject(self, @selector(presentionAnimatedOperation), @(presentionAnimatedOperation), OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (instancetype)initWithNavigationControllerOperation:(UINavigationControllerOperation)navigationControllerOperation fromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController;{
    self = [super init];
    if (self) {
        self.duration = 0.25;
        self.navigationControllerOperation = navigationControllerOperation;
        self.fromViewController = fromViewController;
        self.toViewController = toViewController;
        self.reverse = navigationControllerOperation == UINavigationControllerOperationPop;
    }
    return self;
}

- (instancetype)initWithPresentionAnimatedOperation:(MDPresentionAnimatedOperation)presentionAnimatedOperation fromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController;{
    self = [super init];
    if (self) {
        NSParameterAssert(presentionAnimatedOperation != MDPresentionAnimatedOperationNone);
        self.duration = 0.25;
        self.presentionAnimatedOperation = presentionAnimatedOperation;
        self.fromViewController = fromViewController;
        self.toViewController = toViewController;
        self.reverse = presentionAnimatedOperation == MDPresentionAnimatedOperationDismiss;
    }
    return self;
    
}

@end
