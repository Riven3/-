//
//  Helper.m
//  inject
//
//  Created by shaojinkuang on 3/9/16.
//  Copyright (c) 2016 ___loveSuccess___. All rights reserved.
//

#import "Helper.h"

@implementation Helper
+ (void)SwizzledMethod:(Class)class OrigSEL:(SEL)a SwizzledSEL:(SEL)b
{
    SEL originalSelector = a;
    SEL swizzledSelector = b;
    
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    
    BOOL didAddMethod =
    class_addMethod(class,
                    originalSelector,
                    method_getImplementation(swizzledMethod),
                    method_getTypeEncoding(swizzledMethod));
    
    if (didAddMethod) {
        class_replaceMethod(class,
                            swizzledSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
    
    
}
@end
