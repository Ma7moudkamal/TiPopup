/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ComPopupViewProxy.h"
#import "ComPopupView.h"
#import "TiUtils.h"

@implementation ComPopupViewProxy


-(id)showMenu:(id)args
{
    return [(ComPopupView*)[self view] showMenu:args];
}

@end
