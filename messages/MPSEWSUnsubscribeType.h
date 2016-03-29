#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"






/* UnsubscribeType */
@interface MPSEWSUnsubscribeType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* subscriptionId  /* MPSEWSSubscriptionIdType */;


@end
