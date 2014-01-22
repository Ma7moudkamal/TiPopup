/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ComPopupView.h"

@implementation ComPopupView

-(UIView*)square
{
    if (square==nil)
    {
        square = [[UIView alloc] initWithFrame:[self frame]];
        [self addSubview:square];
        
    }
    return square;
}

-(id)showMenu:(id)args
{
    //[self becomeFirstResponder];
    NSLog(@"showMenu activated");
    
}

@end
