//
//  CEBaseInteractionController+MDTransitioning.m
//  MDTransitioning-VCTransitionsLibrary
//
//  Created by xulinfeng on 2017/10/15.
//  Copyright © 2017年 markejave. All rights reserved.
//

#import <objc/runtime.h>
#import "CEBaseInteractionController+MDTransitioning.h"

@interface CEBaseInteractionController (MDTransitioningPrivate)

@property (nonatomic, weak) UIViewController *viewController;

@end

@implementation CEBaseInteractionController (MDTransitioning)

#pragma mark - accessor

- (UIViewController *)viewController{
    return objc_getAssociatedObject(self, @selector(viewController));
}

- (void)setViewController:(UIViewController *)viewController{
    objc_setAssociatedObject(self, @selector(viewController), viewController, OBJC_ASSOCIATION_ASSIGN);
}

- (id<MDPercentDrivenInteractiveTransitioning>)interactiveTransition{
    return self;
}

#pragma mark - public

+ (instancetype)interactionControllerWithViewController:(UIViewController *)viewController operation:(CEInteractionOperation)operation;{
    return [[self alloc] initWithViewController:viewController operation:operation];
}

- (instancetype)initWithViewController:(UIViewController *)viewController operation:(CEInteractionOperation)operation;{
    if (self = [super init]) {
        self.viewController = viewController;
        
        [self wireToViewController:viewController forOperation:operation];
    }
    return self;
}

@end
