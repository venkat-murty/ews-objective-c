#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetUserOofSettingsRequest.h"
#import "../types/MPSEWSEmailAddress.h"


@implementation MPSEWSGetUserOofSettingsRequest 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetUserOofSettingsRequest class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddress class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetUserOofSettingsRequest class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserOofSettingsRequest: Mailbox=%@ super=%@", _mailbox, [super description]];
}

@end
