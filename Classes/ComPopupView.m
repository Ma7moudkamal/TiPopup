/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ComPopupView.h"
#import "TiUtils.h"
#import "TiApp.h"
#import "ComPopupViewController.h"

@implementation ComPopupView

// Add native view to titanium
-(void)dealloc {
    RELEASE_TO_NIL(view);
    [super dealloc];
}

- (id)init {
    self = [super init];
    if (self) {
        NSLog(@"Init called",self);
        ComPopupViewController * controller = [[ComPopupViewController alloc] init];
        [self addSubview:controller.view];
    }
    return self;
}


-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds {
}


-(id)showMenu:(id)args
{
    NSLog(@"showMenu called");
}


@end
