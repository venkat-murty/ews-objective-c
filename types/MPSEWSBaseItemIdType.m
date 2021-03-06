#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseItemIdType.h"


@implementation MPSEWSBaseItemIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseItemIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseItemIdType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseItemIdType:"];
}

@end

