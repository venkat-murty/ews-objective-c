#import <Foundation/Foundation.h>
#import "MPSEWSBaseSubscriptionRequestType.h"






/* PullSubscriptionRequestType */
@interface MPSEWSPullSubscriptionRequestType : MPSEWSBaseSubscriptionRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPullSubscriptionRequestType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* timeout  /* MPSEWSSubscriptionTimeoutType */;


@end

