#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetEventsResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSXmlContentTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSNotificationType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSGetEventsResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetEventsResponseMessageType class]];

    [handler property    : @"responseClass"
             withAttrTag : @"ResponseClass"
             withHandler : [MPSEWSResponseClassType class]];

    [handler property      : @"messageText"
             withNamespace : 'm'
             withXmlTag    : @"MessageText"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"responseCode"
             withNamespace : 'm'
             withXmlTag    : @"ResponseCode"
             withHandler   : [MPSEWSResponseCodeType class]];

    [handler property      : @"descriptiveLinkKey"
             withNamespace : 'm'
             withXmlTag    : @"DescriptiveLinkKey"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"messageXml"
             withNamespace : 'm'
             withXmlTag    : @"MessageXml"
             withHandler   : [MPSEWSXmlContentTypeHandler class]];

    [handler property      : @"notification"
             withNamespace : 'm'
             withXmlTag    : @"Notification"
             withHandler   : [MPSEWSNotificationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetEventsResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val forVersion:ver]) return FALSE;
    if ([val notification] && ![MPSEWSNotificationType isValid:[val notification] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetEventsResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetEventsResponseMessageType: Notification=%@ super=%@", _notification, [super description]];
}

@end

