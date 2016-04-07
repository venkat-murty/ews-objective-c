#import <Foundation/Foundation.h>
#import "MPSEWSBaseMoveCopyItemType.h"






/* MoveItemType */
@interface MPSEWSMoveItemType : MPSEWSBaseMoveCopyItemType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMoveItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

