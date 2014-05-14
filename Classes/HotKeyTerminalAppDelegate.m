//
//  HotKeyTerminalAppDelegate.m
//  HotKeyTerminal
//
//  Created by August Trometer on 12/31/10.
//  Copyright 2010 FoggyNoggin Software. All rights reserved.
//

#import "HotKeyTerminalAppDelegate.h"

@implementation HotKeyTerminalAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    // trust this application
    AXIsProcessTrustedWithOptions(CFDictionaryCreate(NULL, (const void*[]){ kAXTrustedCheckOptionPrompt }, (const void*[]){ kCFBooleanTrue }, 1, NULL, NULL));
    
    [NSEvent addGlobalMonitorForEventsMatchingMask:NSKeyDownMask handler:^(NSEvent *event)
    {
        int flags = [event modifierFlags];
        int commandDown = flags & NSCommandKeyMask;
        
        if (([event keyCode] == 53) && commandDown)
            [[NSWorkspace sharedWorkspace] launchApplication:@"Terminal"]; 
    }];

}

@end
