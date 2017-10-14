//
//  CEBaseInteractionController+MDTransitioning.h
//  MDTransitioning-VCTransitionsLibrary
//
//  Created by xulinfeng on 2017/10/15.
//  Copyright © 2017年 markejave. All rights reserved.
//

#import <VCTransitionsLibrary/CEBaseInteractionController.h>
#import <MDTransitioning/MDTransitioning.h>

@interface CEBaseInteractionController (MDTransitioning)<MDInteractionController>

@property (nonatomic, assign) BOOL enable __unavailable;

@property (nonatomic, copy) CGFloat (^allowSwipe)(CGPoint location, CGPoint velocity) __unavailable;

@property (nonatomic, copy) CGFloat (^progress)(CGPoint location, CGPoint translation, CGPoint velocity) __unavailable;

@property (nonatomic, copy) void (^begin)(id<MDPercentDrivenInteractiveTransitioning> interactiveTransition) __unavailable;

@property (nonatomic, copy) void (^end)(id<MDPercentDrivenInteractiveTransitioning> interactiveTransition, BOOL finished) __unavailable;

@property (nonatomic, copy) void (^update)(id<MDPercentDrivenInteractiveTransitioning> interactiveTransition, CGFloat progress) __unavailable;

- (id<MDPercentDrivenInteractiveTransitioning>)requireInteractiveTransition __unavailable;

+ (instancetype)interactionControllerWithViewController:(UIViewController *)viewController __unavailable;
- (instancetype)initWithViewController:(UIViewController *)viewController __unavailable;

+ (instancetype)interactionControllerWithViewController:(UIViewController *)viewController operation:(CEInteractionOperation)operation;
- (instancetype)initWithViewController:(UIViewController *)viewController operation:(CEInteractionOperation)operation;;

@end
