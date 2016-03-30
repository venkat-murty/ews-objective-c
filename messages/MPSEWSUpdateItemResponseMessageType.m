#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUpdateItemResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSArrayOfRealItemsType.h"
#import "../types/MPSEWSConflictResultsType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSUpdateItemResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUpdateItemResponseMessageType class]];

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
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"items"
             withNamespace : 'm'
             withXmlTag    : @"Items"
             withHandler   : [MPSEWSArrayOfRealItemsType class]];

    [handler property      : @"conflictResults"
             withNamespace : 'm'
             withXmlTag    : @"ConflictResults"
             withHandler   : [MPSEWSConflictResultsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUpdateItemResponseMessageType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUpdateItemResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateItemResponseMessageType: ConflictResults=%@ super=%@", _conflictResults, [super description]];
}

@end

