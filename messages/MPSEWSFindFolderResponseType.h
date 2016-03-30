#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* FindFolderResponseType */
@interface MPSEWSFindFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindFolderResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

