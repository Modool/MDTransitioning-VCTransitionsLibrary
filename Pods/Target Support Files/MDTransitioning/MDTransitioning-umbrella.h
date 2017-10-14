#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "MDAnimatedTransitioning.h"
#import "MDInteractionController.h"
#import "MDInteractiveTransitioning.h"
#import "MDNavigationAnimationController.h"
#import "MDNavigationControllerDelegate.h"
#import "MDPopInteractionController.h"
#import "MDPresentionAnimationController.h"
#import "MDPresentionControllerDelegate.h"
#import "MDScaleNavigationAnimationController.h"
#import "MDSwipeInteractionController.h"
#import "MDTransitioning.h"
#import "MDVerticalSwipDismissInteractionController.h"
#import "UIViewController+MDNavigationTransitioning.h"
#import "UIViewController+MDPresentionTransitioning.h"

FOUNDATION_EXPORT double MDTransitioningVersionNumber;
FOUNDATION_EXPORT const unsigned char MDTransitioningVersionString[];

