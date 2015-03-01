//
//  ALNSLog.m
//  ALNSLog
//
//  Created by Andrea Mario Lufino on 27/02/15.
//  Copyright (c) 2015 Andrea Mario Lufino. All rights reserved.
//

#import "ALNSLog.h"

@implementation ALNSLog

void AdvancedNSLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...) {
    /*! Hold info on variable arguments */
    va_list ap;
    
    /*! Init a list with variable arguments */
    va_start (ap, format);
    
    if (![format hasSuffix: @"\n"])
        format = [format stringByAppendingString: @"\n"];
    
    /*! Get the body */
    NSString *body = [[NSString alloc] initWithFormat:format arguments:ap];
    
    /*! End using list */
    va_end (ap);
    
    /*! Create the string to print */
    NSString *fileName = [[NSString stringWithUTF8String:file] lastPathComponent];
    fprintf(stderr, "[FILE: %s] [LINE: %d] [METHOD: %s]\n%s",
            [fileName UTF8String], lineNumber,
            functionName, [body UTF8String]);
}

@end
