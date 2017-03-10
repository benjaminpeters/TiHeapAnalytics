/**
 * tiheapanalytics
 *
 * Created by Benjamin Peters
 * Copyright (c) 2017 Your Company. All rights reserved.
 */

#import "ComBenjaminHeapModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "Heap.h"

@implementation ComBenjaminHeapModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"9e810091-5250-438c-805a-4ef30f662706";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.benjamin.heap";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably

	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

// Return the version number of the Heap library.
-(id)libVersion:(id)args
{
    return [Heap libVersion];
}

// Return the Heap-generated user ID of the current user.
-(id)getUserId:(id)args
{
    return [Heap userId];
}

// Set the app ID for your project, and begin tracking events automatically.
-(void)setHeapAppId:(id)args
{
    ENSURE_SINGLE_ARG(args,NSString);
    [Heap setAppId:args];
}

// Enable Event Visualizer. Allows capturing events in-app.
-(id)enableHeapVisualizer:(id)args
{
    [Heap enableVisualizer];
    return @"enableVisualizer";
}

// Start/stop debug mode. Displays Heap activity via NSLog.
-(void)startDebug
{
    [Heap startDebug];
}
-(void)stopDebug
{
    [Heap stopDebug];
}

// Set the app ID for your project, and begin tracking events automatically.
-(void)identify:(id)args
{
    ENSURE_SINGLE_ARG(args,NSString);
    [Heap identify:args];
}

@end
