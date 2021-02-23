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

#import "AKEngine.h"
#import "AnnotationMacro.h"
#import "metamacro.h"
#import "PHAnnotationHandler.h"
#import "NSDictionary+AnnotationKit.h"
#import "LifeCycleAnnnotation.h"
#import "AKRouteAnnotation.h"
#import "AKRouter.h"

FOUNDATION_EXPORT double AnnotationKitVersionNumber;
FOUNDATION_EXPORT const unsigned char AnnotationKitVersionString[];

