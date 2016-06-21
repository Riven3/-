//
//  Helper.h
//  inject
//
//  Created by shaojinkuang on 3/9/16.
//  Copyright (c) 2016 ___loveSuccess___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
@interface Helper : NSObject
+ (void)SwizzledMethod:(Class)class OrigSEL:(SEL)a SwizzledSEL:(SEL)b;
@end
