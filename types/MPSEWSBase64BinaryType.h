#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSBase64BinaryTypeHandler.h"

@interface MPSEWSBase64BinaryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBase64BinaryType*)val;

- (id) init;
- (Class) handlerClass;

@property (retain)  NSString* simpleContent    /* xs:base64Binary */;

@end

