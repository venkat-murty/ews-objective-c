#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SendItemResponseType */
@interface MPSEWSSendItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSendItemResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

