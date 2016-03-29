#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRemoveDelegateType.h"
#import "../types/MPSEWSArrayOfUserIdType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSRemoveDelegateType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRemoveDelegateType class]];

    [handler property      : @"mailbox"
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"userIds"
             withNamespace : 'm'
             withXmlTag    : @"UserIds"
             withHandler   : [MPSEWSArrayOfUserIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRemoveDelegateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RemoveDelegateType: UserIds=%@ super=%@", _userIds, [super description]];
}

@end

