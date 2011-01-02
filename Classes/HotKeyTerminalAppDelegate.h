//
//  HotKeyTerminalAppDelegate.h
//  HotKeyTerminal
//
//  Created by August Trometer on 12/31/10.
//  Copyright 2010 FoggyNoggin Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface HotKeyTerminalAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
