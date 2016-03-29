#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUnknownAttendeeConflictData.h"


@implementation MPSEWSUnknownAttendeeConflictData 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUnknownAttendeeConflictData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUnknownAttendeeConflictData class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UnknownAttendeeConflictData: super=%@", [super description]];
}

@end
