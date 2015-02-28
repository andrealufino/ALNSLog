//
//  ExtendNSLogFunctionality.h
//  GoogleMapsHomeView
//
//  Created by Andrea Mario Lufino on 27/02/15.
//  Copyright (c) 2015 Andrea Mario Lufino. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifdef DEBUG
#define NSLog(args...) AdvancedNSLog(__FILE__,__LINE__,__PRETTY_FUNCTION__,args);
#else
#define NSLog(x...)
#endif

void AdvancedNSLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...);

/*!
 * This class expand the use of NSLog statement. Define NSLog as a macro.
 Now NSLog log these elements :
 1. Name of the file
 2. Number of the line
 3. Name of the method
 4. The body you choose to print
 */

@interface ALNSLog : NSObject

@end
