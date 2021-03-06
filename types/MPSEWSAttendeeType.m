#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAttendeeType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSEmailAddressType.h"
#import "../types/MPSEWSResponseTypeType.h"


@implementation MPSEWSAttendeeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAttendeeType class]];

    [handler property      : @"mailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"responseType"
             withNamespace : 't'
             withXmlTag    : @"ResponseType"
             withHandler   : [MPSEWSResponseTypeType class]];

    [handler property      : @"lastResponseTime"
             withNamespace : 't'
             withXmlTag    : @"LastResponseTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSAttendeeType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val mailbox] && ![MPSEWSEmailAddressType isValid:[val mailbox] forVersion:ver]) return FALSE;
    if ([val responseType] && ![MPSEWSResponseTypeType isValid:[val responseType] forVersion:ver]) return FALSE;
    if ([val lastResponseTime] && ![MPSEWSDateTimeTypeHandler isValid:[val lastResponseTime] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAttendeeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttendeeType: Mailbox=%@ ResponseType=%@ LastResponseTime=%@", _mailbox, _responseType, _lastResponseTime];
}

@end

